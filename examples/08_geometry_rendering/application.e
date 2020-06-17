note
	description: "[
					Eiffel SDL application that shows a new feature in SDL 2.0 is hardware accelerated primitive rendering. Here we'll be using it to render some common shapes. 
					For original C version, please see:
					http://lazyfoo.net/tutorials/SDL/08_geometry_rendering/index.php
	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=Geometry Rendering", "src=http://lazyfoo.net/tutorials/SDL/08_geometry_rendering/index.php", "protocol=uri"

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
			fill_rect: SDL_RECT_STRUCT_API
			outline_rect: SDL_RECT_STRUCT_API
			i: INTEGER
		do
			init
			if not success  then
				print ("Failed to Initialize%N")
			else
				load_media
				if not success then
					print ("Failed to load media%N")
				else
					if
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
								-- Clear screan
							if attached renderer as l_renderer then
								res := {SDL_RENDER}.sdl_set_render_draw_color (l_renderer, 0xFF, 0xFF, 0xFF, 0xFF )
								res := {SDL_RENDER}.sdl_render_clear (l_renderer)

									--	Render red filled quad
								create fill_rect.make
								fill_rect.set_x (SCREEN_WIDTH // 4)
								fill_rect.set_y (SCREEN_HEIGHT // 4)
								fill_rect.set_w (SCREEN_WIDTH // 2)
								fill_rect.set_h (SCREEN_HEIGHT // 2)
								res := {SDL_RENDER}.sdl_set_render_draw_color (l_renderer, 0xFF, 0x00, 0x00, 0xFF)
								res := {SDL_RENDER}.sdl_render_fill_rect (l_renderer, fill_rect)

									-- Render green outlined quad
								create outline_rect.make
								outline_rect.set_x (SCREEN_WIDTH // 6)
								outline_rect.set_y (SCREEN_HEIGHT // 6)
								outline_rect.set_w ((SCREEN_WIDTH * 2) // 3)
								outline_rect.set_h ((SCREEN_HEIGHT * 2) // 3)
								res := {SDL_RENDER}.sdl_set_render_draw_color (l_renderer, 0x00, 0xFF, 0x00, 0xFF)
								res := {SDL_RENDER}.sdl_render_draw_rect (l_renderer, outline_rect)

--									-- Draw blue horizontal line
								res := {SDL_RENDER}.sdl_set_render_draw_color (l_renderer,0x00, 0x00, 0xFF, 0xFF )
								res := {SDL_RENDER}.sdl_render_draw_line (l_renderer, 0, SCREEN_HEIGHT // 2, SCREEN_WIDTH, SCREEN_HEIGHT // 2)

									-- Draw vertical line of yellow dots.
								res := {SDL_RENDER}.sdl_set_render_draw_color (l_renderer, 0xFF, 0xFF, 0x00, 0xFF )
								from
									i := 0
								until
									i = SCREEN_HEIGHT
								loop
									i := i + 4
									res := {SDL_RENDER}.sdl_render_draw_point (l_renderer,  SCREEN_WIDTH // 2, i)

								end

								{SDL_RENDER}.sdl_render_present (l_renderer)
							end

						end
					end
				end
			end
			close
		end

	init
			-- Starts up SDL and creates window
		local
			res: INTEGER
		do
				-- Initialize Success
			success := True
				-- Initialize SDL
			if {SDL_FUNCTIONS_API}.sdl_init ({SDL_CONSTANT_API}.SDL_INIT_VIDEO) < 0 then
				print ("SDL could not initialize! SDL_Error: " + {SDL_ERROR}.sdl_get_error);
				success := False
			else
				 	-- Set texture filtering to linear.
				if {SDL_HINTS}.sdl_set_hint ({SDL_CONSTANT_API}.sdl_hint_render_scale_quality, "1") then
					print ( "Warning: Linear texture filtering not enabled!%N" );
				end
					-- Create window
				window := {SDL_VIDEO}.sdl_create_window ("SDL Tutorial", {SDL_CONSTANT_API}.SDL_WINDOWPOS_UNDEFINED, {SDL_CONSTANT_API}.SDL_WINDOWPOS_UNDEFINED,
					SCREEN_WIDTH, SCREEN_HEIGHT, {SDL_WINDOW_FLAGS_ENUM_API}.SDL_WINDOW_SHOWN)
				if attached window as l_window then
						-- Create renderer for window	
					renderer := {SDL_RENDER_FUNCTIONS_API}.sdl_create_renderer (l_window, -1 , {SDL_RENDERER_FLAGS_ENUM_API}.SDL_RENDERER_ACCELERATED )

					if attached renderer as l_renderer then
						res := {SDL_RENDER_FUNCTIONS_API}.sdl_set_render_draw_color (l_renderer, 0xFF, 0xFF, 0xFF, 0xFF)
						if {SDL_IMAGE_FUNCTIONS}.img_init ({IMG_INIT_FLAGS_ENUM_API}.img_init_png ) /= {IMG_INIT_FLAGS_ENUM_API}.img_init_png then
							print ( "SDL_image could not initialize! SDL_image Error: " + {SDL_ERROR}.sdl_get_error )
							success := False
						end
					else
						print ( "Renderer could not be created! SDL Error: " + {SDL_ERROR}.sdl_get_error )
						success := False
					end
				else
					print ("Window could not be created! SDL_Error: " +  {SDL_ERROR}.sdl_get_error)
					success := False
				end
			end
		end

	load_texture (a_path: PATH): detachable SDL_TEXTURE_STRUCT_API
			-- Loads individual image by path `a_path`
		local
			loaded_surface: SDL_SURFACE_STRUCT_API
		do
			loaded_surface := {SDL_IMAGE_FUNCTIONS}.img_load ((create {C_STRING}.make (a_path.name)).item)
			if loaded_surface = Void then
				print ("Unable to load image " + a_path.name + {SDL_ERROR}.sdl_get_error + "%N")
				success := False
			else
				if attached renderer as l_renderer then
					Result := {SDL_RENDER_FUNCTIONS_API}.sdl_create_texture_from_surface (l_renderer, loaded_surface)
					if Result = Void then
						print ({STRING_32}"Unable to create texture from image " + a_path.absolute_path.name.to_string_32 + " - "  + {SDL_ERROR}.sdl_get_error + "%N")
						{SDL_SURFACE_FUNCTIONS_API}.sdl_free_surface (loaded_surface)
						success := False
					end
				end
			end
		end


	load_media
			-- loads media.
		do
		end

	close
			-- Clean up the code
		do

				-- destroy window
			if attached renderer as l_renderer then
				{SDL_RENDER_FUNCTIONS_API}.sdl_destroy_renderer (l_renderer)
			end
			if attached window as l_window then
				{SDL_VIDEO_FUNCTIONS_API}.sdl_destroy_window (l_window)
			end

				-- Quit SDL subsystems.
			{SDL_IMAGE_FUNCTIONS_API}.img_quit
			{SDL_FUNCTIONS_API}.sdl_quit
		end

feature -- Access

	window: detachable SDL_WINDOW_STRUCT_API
			-- The window we'll be rendering to.

	renderer: detachable SDL_RENDERER_STRUCT_API
			-- The window renderer

	success : BOOLEAN
			-- is everything ok?

feature {NONE} -- Implementation

	SCREEN_WIDTH: INTEGER = 640
	SCREEN_HEIGHT: INTEGER = 480
			-- Screen dimension constants.


end
