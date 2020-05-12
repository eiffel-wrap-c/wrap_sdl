note
	description: "[
					Eiffel SDL application that shows different images appear depending on which key you press.
					For original C version, please see:
					http://lazyfoo.net/tutorials/SDL/04_key_presses/index.php
	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=Key presses", "src=http://lazyfoo.net/tutorials/SDL/04_key_presses/index.php", "protocol=uri"

class
	APPLICATION

inherit
	ARGUMENTS_32

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			res: INTEGER
			quit: BOOLEAN
			event: SDL_EVENT_UNION_API
				-- event handler.
		do
			create key_press_surfaces.make_filled (create {SDL_SURFACE_STRUCT_API}.make, 1, 6)
			init
			load_media
			if	attached screen_surface as l_screen_surface and then
			  	attached window as l_window
			then
				from
					-- While the application is running.
				until
					quit
				loop
					from
						-- Handle events on the queue.
						create event.make
					until
						{SDL_EVENTS}.sdl_poll_event (event) = 0
					loop
							-- User requests Quit.
						if event.type = {SDL_CONSTANT_API}.SDL_QUIT then
							quit := True
						elseif event.type = {SDL_CONSTANT_API}.SDL_KEYDOWN  then
							-- Select surfaces based on key press
							if event.key.keysym.sym = {SDL_KEYCODE}.SDLK_UP  then
								current_surface := key_press_surfaces [{KEY_PRESS_SURFACE_ENUM}.KEY_PRESS_SURFACE_UP]
							elseif event.key.keysym.sym = {SDL_KEYCODE}.SDLK_DOWN then
								current_surface := key_press_surfaces [{KEY_PRESS_SURFACE_ENUM}.KEY_PRESS_SURFACE_DOWN]
							elseif event.key.keysym.sym = {SDL_KEYCODE}.SDLK_LEFT then
								current_surface := key_press_surfaces [{KEY_PRESS_SURFACE_ENUM}.KEY_PRESS_SURFACE_LEFT]
							elseif event.key.keysym.sym = {SDL_KEYCODE}.SDLK_RIGHT then
								current_surface := key_press_surfaces [{KEY_PRESS_SURFACE_ENUM}.KEY_PRESS_SURFACE_RIGHT]
							else
								current_surface := key_press_surfaces [{KEY_PRESS_SURFACE_ENUM}.KEY_PRESS_SURFACE_DEFAULT]
							end
						end
					end
						-- Apply the image
					if attached current_surface as l_current_surface then
						res := {SDL_SURFACE}.sdl_upper_blit (l_current_surface, Void, l_screen_surface, Void)
						res := {SDL_VIDEO_FUNCTIONS_API}.sdl_update_window_surface (l_window)
					end
				end

			end
			close
		end

	init
			-- Starts up SDL and creates window
		do
				-- Initialize SDL
			if {SDL_FUNCTIONS_API}.sdl_init ({SDL_CONSTANT_API}.SDL_INIT_VIDEO) < 0 then
				print ("SDL could not initialize! SDL_Error: " + {SDL_ERROR}.sdl_get_error);
				{EXCEPTIONS}.die (1)
			else
				window := {SDL_VIDEO}.sdl_create_window ("SDL Tutorial", {SDL_CONSTANT_API}.SDL_WINDOWPOS_UNDEFINED, {SDL_CONSTANT_API}.SDL_WINDOWPOS_UNDEFINED,
					SCREEN_WIDTH, SCREEN_HEIGHT, {SDL_WINDOW_FLAGS_ENUM_API}.SDL_WINDOW_SHOWN)
				if attached window as l_window then
					screen_surface := {SDL_VIDEO}.sdl_get_window_surface (l_window)
						-- Get window surface
					if screen_surface = Void then
						print ("Surface could not be getted! SDL_Error: " + {SDL_ERROR}.sdl_get_error)
						{EXCEPTIONS}.die (1)
					end
				else
					print ("Window could not be created! SDL_Error: " +  {SDL_ERROR}.sdl_get_error)
					{EXCEPTIONS}.die (1)
				end
			end
		end


	load_surface (a_path: PATH): detachable SDL_SURFACE_STRUCT_API
			-- Loads individual image by path `a_path`
		local
			l_ptr: POINTER
			rwops: SDL_RWOPS_STRUCT_API
		do
			l_ptr := {SDL_RWOPS_FUNCTIONS_API}.sdl_rwfrom_file ((create {C_STRING}.make (a_path.name)).item, (create {C_STRING}.make ("rb")).item)
			if l_ptr /= default_pointer then
				create rwops.make_by_pointer (l_ptr)
				Result := {SDL_SURFACE_FUNCTIONS_API}.sdl_load_bmp_rw (rwops, 1)
				if Result = Void then
					print ("Unable to load image " + a_path.name + {SDL_ERROR}.sdl_get_error + "%N")
					{EXCEPTIONS}.die (1)
				end
			else
				print ("Unable to load image 02_getting_an_image_on_the_screen/hello_world.bmp " +  {SDL_ERROR}.sdl_get_error + "%N")
				{EXCEPTIONS}.die (1)
			end
		end


	load_media
			-- loads media.
		do
				-- Load default surface
			if attached load_surface (create {PATH}.make_from_string ("press.bmp")) as default_surface then
				key_press_surfaces [{KEY_PRESS_SURFACE_ENUM}.KEY_PRESS_SURFACE_DEFAULT] := default_surface
			else
				print ( "Failed to load default image!%N" )
				{EXCEPTIONS}.die (1)
			end

				-- Load up surface
			if attached load_surface (create {PATH}.make_from_string ("up.bmp")) as up_surface then
				key_press_surfaces [{KEY_PRESS_SURFACE_ENUM}.KEY_PRESS_SURFACE_UP] := up_surface
			else
				print ( "Failed to load up image!%N" )
				{EXCEPTIONS}.die (1)
			end

				-- Load down surface
			if attached load_surface (create {PATH}.make_from_string ("down.bmp")) as down_surface then
				key_press_surfaces [{KEY_PRESS_SURFACE_ENUM}.KEY_PRESS_SURFACE_DOWN] := down_surface
			else
				print ( "Failed to load down image!%N" )
				{EXCEPTIONS}.die (1)
			end

				-- Load left surface
			if attached load_surface (create {PATH}.make_from_string ("left.bmp")) as left_surface then
				key_press_surfaces [{KEY_PRESS_SURFACE_ENUM}.KEY_PRESS_SURFACE_LEFT] := left_surface
			else
				print ( "Failed to load left image!%N" )
				{EXCEPTIONS}.die (1)
			end

				-- Load right surface
			if attached load_surface (create {PATH}.make_from_string ("right.bmp")) as right_surface then
				key_press_surfaces [{KEY_PRESS_SURFACE_ENUM}.KEY_PRESS_SURFACE_RIGHT] := right_surface
			else
				print ( "Failed to load right image!%N" )
				{EXCEPTIONS}.die (1)
			end

		end

	close
			-- Clean up the code
		local
			i: INTEGER
		do
			from
				i := 1
			until
				i = key_press_surfaces.count
			loop
				{SDL_SURFACE_FUNCTIONS_API}.sdl_free_surface (key_press_surfaces [i])
				i := i + 1
			end

			if attached window as l_window then
				{SDL_VIDEO_FUNCTIONS_API}.sdl_destroy_window (l_window)
			end
			{SDL_FUNCTIONS_API}.sdl_quit

		end

feature -- Access

	window: detachable SDL_WINDOW_STRUCT_API
			-- The window we'll be rendering to.

	screen_surface: detachable SDL_SURFACE_STRUCT_API
			-- The surface contained by the window.

	current_surface: detachable SDL_SURFACE_STRUCT_API
			-- Current displayed image.

	key_press_surfaces: ARRAY [SDL_SURFACE_STRUCT_API]
			-- The images that correspond to a keypress.


feature {NONE} -- Implementation

	SCREEN_WIDTH: INTEGER = 640
	SCREEN_HEIGHT: INTEGER = 480
			-- Screen dimension constants.


end
