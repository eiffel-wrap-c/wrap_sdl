note
	description: "[
			Eiffel SDL graphics application that renders a quad on the screen.
			For original C version, please see:
			http://lazyfoo.net/tutorials/SDL/01_hello_SDL/index2.php

	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=HelloSDL", "src=http://lazyfoo.net/tutorials/SDL/01_hello_SDL/index2.php", "protocol=uri"

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
			window: SDL_WINDOW_STRUCT_API
				-- The window we'll be rendering to.
			screen_surface: SDL_SURFACE_STRUCT_API
				-- The surface contained by the window.
		do
			-- Initialize SDL
			if sdl.sdl_init ({SDL_CONSTANT_API}.SDL_INIT_VIDEO) < 0 then
				print ( "SDL could not initialize! SDL_Error: " + (create {SDL_ERROR}).sdl_get_error );
				{EXCEPTIONS}.die (1)
			else
				window := {SDL_VIDEO}.sdl_create_window ("SDL Tutorial", {SDL_CONSTANT_API}.SDL_WINDOWPOS_UNDEFINED, {SDL_CONSTANT_API}.SDL_WINDOWPOS_UNDEFINED,
					SCREEN_WIDTH, SCREEN_HEIGHT, {SDL_WINDOW_FLAGS_ENUM_API}.SDL_WINDOW_SHOWN )
				if window = Void then
					print( "Window could not be created! SDL_Error: "+ (create {SDL_ERROR}).sdl_get_error )
					{EXCEPTIONS}.die (1)
				else
					screen_surface := (create {SDL_VIDEO}).sdl_get_window_surface (window)
					-- Get window surface
					if screen_surface = Void then
						print( "Surface could not be getted! SDL_Error: "+ (create {SDL_ERROR}).sdl_get_error )
						{EXCEPTIONS}.die (1)
					else
							-- Fill the surface
						if attached screen_surface.format as l_format then
							if {SDL_SURFACE}.sdl_fill_rect (screen_surface, Void, (create {SDL_PIXELS_FUNCTIONS_API}).sdl_map_rgb (l_format, 0xFF, 0xFF, 0xFF)) /= 0 then
								print( "SDL Fill rect! SDL_Error: "+ (create {SDL_ERROR}).sdl_get_error )
								{EXCEPTIONS}.die (1)
							end
						end
							-- Update the surface
						if (create {SDL_VIDEO}).sdl_update_window_surface (window) /= 0 then
							print( "SDL update the surface! SDL_Error: "+ (create {SDL_ERROR}).sdl_get_error )
							{EXCEPTIONS}.die (1)
						end
						{SDL_TIMER_FUNCTIONS_API}.sdl_delay( 10000 )
							-- wait 2 seconds
					end
					(create {SDL_VIDEO}).sdl_destroy_window (window)
					{SDL_FUNCTIONS_API}.sdl_quit
				end
			end
		end


feature {NONE} -- Implementation


	SCREEN_WIDTH: INTEGER = 640
	SCREEN_HEIGHT: INTEGER = 480
		-- Screen dimension constants.


	sdl: SDL_FUNCTIONS_API
		once
			create Result
		end
end
