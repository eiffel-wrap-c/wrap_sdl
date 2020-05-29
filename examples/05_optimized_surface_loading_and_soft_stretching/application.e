note
	description: "[
					Eiffel SDL application that shows Optimized Surface Loading and Soft Stretching
					For original C version, please see:
					http://lazyfoo.net/tutorials/SDL/05_optimized_surface_loading_and_soft_stretching/index.php
	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=Optimized Surface Loading and Soft Stretching", "http://lazyfoo.net/tutorials/SDL/05_optimized_surface_loading_and_soft_stretching/index.php", "protocol=uri"

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
			strech_rect: SDL_RECT_STRUCT_API
		do
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
						end
					end
						-- Apply the image streched
					if attached current_surface as l_current_surface then
						create strech_rect.make
						strech_rect.set_x (0)
						strech_rect.set_y (0)
						strech_rect.set_w (screen_width)
						strech_rect.set_h (screen_height)
						res := {SDL_SURFACE}.sdl_upper_blit_scaled (l_current_surface, Void, l_screen_surface, strech_rect)
							-- Update the surface
						res := {SDL_VIDEO}.sdl_update_window_surface (l_window)
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
			loaded_surface: SDL_SURFACE_STRUCT_API

		do
			l_ptr := {SDL_RWOPS_FUNCTIONS_API}.sdl_rwfrom_file ((create {C_STRING}.make (a_path.name)).item, (create {C_STRING}.make ("rb")).item)
			if l_ptr /= default_pointer then
				create rwops.make_by_pointer (l_ptr)
				loaded_surface := {SDL_SURFACE}.sdl_load_bmp_rw (rwops, 1)
				if loaded_surface = Void then
					print ("Unable to load image " + a_path.name + {SDL_ERROR}.sdl_get_error + "%N")
					{EXCEPTIONS}.die (1)
				else
					if attached screen_surface as l_screen_surface then
							-- Convert surface to scrrent format.
						Result := {SDL_SURFACE}.sdl_convert_surface (loaded_surface, l_screen_surface.format, 0)
						if Result = Void then
							print ({STRING_32}"Unable to optimize image " + a_path.absolute_path.name.to_string_32 + " - "  + {SDL_ERROR}.sdl_get_error + "%N")
							{SDL_SURFACE_FUNCTIONS_API}.sdl_free_surface (loaded_surface)
							{EXCEPTIONS}.die (1)
						end
					end
				end
			else
				print ({STRING_32}"Unable to load image " + a_path.absolute_path.name.to_string_32 + " - "  + {SDL_ERROR}.sdl_get_error + "%N")
				{EXCEPTIONS}.die (1)
			end
		end


	load_media
			-- loads media.
		do
				-- Load strech surface
			if attached load_surface (create {PATH}.make_from_string ("stretch.bmp")) as strech_surface then
				current_surface := strech_surface
			else
				print ( "Failed to load strech image!%N" )
				{EXCEPTIONS}.die (1)
			end

		end

	close
			-- Clean up the code
		do
				-- free loaded image
			if attached current_surface as l_surface then
				{SDL_SURFACE}.sdl_free_surface (l_surface)
			end

				-- destrou window
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

feature {NONE} -- Implementation

	SCREEN_WIDTH: INTEGER = 640
	SCREEN_HEIGHT: INTEGER = 480
			-- Screen dimension constants.


end
