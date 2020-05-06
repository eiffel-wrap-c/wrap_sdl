note
	description: "[
					Eiffel SDL graphics application that gets an image on the screen
					For original C version, please see:
					http://lazyfoo.net/tutorials/SDL/02_getting_an_image_on_the_screen/index.php
	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=Getting an image on the screen", "src=http://lazyfoo.net/tutorials/SDL/02_getting_an_image_on_the_screen/index.php", "protocol=uri"

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
		do
			init
			load_media
			if attached hello_world as l_hello_world and then
			  	attached screen_surface as l_screen_surface and then
			  	attached window as l_window
			then
					-- Apply the image
				res := {SDL_SURFACE}.sdl_upper_blit (l_hello_world, Void, l_screen_surface, Void)
				res := (create {SDL_VIDEO_FUNCTIONS_API}).sdl_update_window_surface (l_window)

            	{SDL_TIMER_FUNCTIONS_API}.sdl_delay (10000)
					-- Wait 10 seconds
			end
			close
		end

	init
			-- Starts up SDL and creates window
		do
				-- Initialize SDL
			if sdl.sdl_init ({SDL_CONSTANT_API}.SDL_INIT_VIDEO) < 0 then
				print ("SDL could not initialize! SDL_Error: " + (create {SDL_ERROR}).sdl_get_error);
				{EXCEPTIONS}.die (1)
			else
				window := {SDL_VIDEO}.sdl_create_window ("SDL Tutorial", {SDL_CONSTANT_API}.SDL_WINDOWPOS_UNDEFINED, {SDL_CONSTANT_API}.SDL_WINDOWPOS_UNDEFINED,
					SCREEN_WIDTH, SCREEN_HEIGHT, {SDL_WINDOW_FLAGS_ENUM_API}.SDL_WINDOW_SHOWN)
				if attached window as l_window then
					screen_surface := (create {SDL_VIDEO}).sdl_get_window_surface (l_window)
						-- Get window surface
					if screen_surface = Void then
						print ("Surface could not be getted! SDL_Error: " + (create {SDL_ERROR}).sdl_get_error)
						{EXCEPTIONS}.die (1)
					end
				else
					print ("Window could not be created! SDL_Error: " + (create {SDL_ERROR}).sdl_get_error)
					{EXCEPTIONS}.die (1)
				end
			end
		end

	load_media
			-- loads media.
		local
			l_ptr: POINTER
			rwops: SDL_RWOPS_STRUCT_API
		do
			l_ptr := {SDL_RWOPS_FUNCTIONS_API}.sdl_rwfrom_file ((create {C_STRING}.make ("hello_world.bmp")).item, (create {C_STRING}.make ("rb")).item)
			if l_ptr /= default_pointer then
				create rwops.make_by_pointer (l_ptr)
				hello_world := (create {SDL_SURFACE_FUNCTIONS_API}).sdl_load_bmp_rw (rwops, 1)
				if hello_world = Void then
					print ("Unable to load image 02_getting_an_image_on_the_screen/hello_world.bmp " + (create {SDL_ERROR}).sdl_get_error + "%N")
					{EXCEPTIONS}.die (1)
				end
			else
				print ("Unable to load image 02_getting_an_image_on_the_screen/hello_world.bmp " + (create {SDL_ERROR}).sdl_get_error + "%N")
				{EXCEPTIONS}.die (1)
			end
		end


	close
			-- Clean up the code
		do
			if attached hello_world as l_hello_world then
				(create {SDL_SURFACE_FUNCTIONS_API}).sdl_free_surface (l_hello_world)
			end
			if attached window as l_window then
				(create {SDL_VIDEO_FUNCTIONS_API}).sdl_destroy_window (l_window)
			end
			{SDL_FUNCTIONS_API}.sdl_quit

		end

feature -- Access

	window: detachable SDL_WINDOW_STRUCT_API
			-- The window we'll be rendering to.

	screen_surface: detachable SDL_SURFACE_STRUCT_API
			-- The surface contained by the window.

	hello_world: detachable SDL_SURFACE_STRUCT_API
			-- The image we will load and show on the screen.

feature {NONE} -- Implementation

	SCREEN_WIDTH: INTEGER = 640
	SCREEN_HEIGHT: INTEGER = 480
			-- Screen dimension constants.

	sdl: SDL_FUNCTIONS_API
		once
			create Result
		end

end
