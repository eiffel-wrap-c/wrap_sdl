note
	description: "[
		Eiffel SDL application lets you use color keying to give textures transparent backgrounds.
		For original C version, please see:
		http://lazyfoo.net/tutorials/SDL/10_color_keying/index.php
	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=Color Keying", "src=http://lazyfoo.net/tutorials/SDL/10_color_keying/index.php", "protocol=uri"

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
			top_left_viewport: SDL_RECT_STRUCT_API
			top_right_viewport: SDL_RECT_STRUCT_API
			bottom_viewport: SDL_RECT_STRUCT_API
		do
			init
			if attached renderer as l_renderer then
				create foo_texture.make (l_renderer)
				create background_texture.make (l_renderer)
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
							res := {SDL_RENDER}.sdl_set_render_draw_color (l_renderer, 0xFF, 0xFF, 0xFF, 0xFF)
							res := {SDL_RENDER}.sdl_render_clear (l_renderer)

								-- Render background texture to screen
							if attached background_texture as l_bt then
								l_bt.render (0, 0)
							end
							if attached foo_texture as l_ft then
								l_ft.render (340, 190)
							end
								-- Update to screen
							{SDL_RENDER}.sdl_render_present (l_renderer)
						end
					end
				end
			else
				print ("Failed to initialize%N")
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
					print ("Warning: Linear texture filtering not enabled!%N");
				end
					-- Create window
				window := {SDL_VIDEO}.sdl_create_window ("SDL Tutorial", {SDL_CONSTANT_API}.SDL_WINDOWPOS_UNDEFINED, {SDL_CONSTANT_API}.SDL_WINDOWPOS_UNDEFINED,
					SCREEN_WIDTH, SCREEN_HEIGHT, {SDL_WINDOW_FLAGS_ENUM_API}.SDL_WINDOW_SHOWN)
				if attached window as l_window then
						-- Create renderer for window
					renderer := {SDL_RENDER_FUNCTIONS_API}.sdl_create_renderer (l_window, -1, {SDL_RENDERER_FLAGS_ENUM_API}.SDL_RENDERER_ACCELERATED)
					if attached renderer as l_renderer then
							-- Initialize renderer color
						res := {SDL_RENDER_FUNCTIONS_API}.sdl_set_render_draw_color (l_renderer, 0xFF, 0xFF, 0xFF, 0xFF)
						if {SDL_IMAGE_FUNCTIONS}.img_init ({IMG_INIT_FLAGS_ENUM_API}.img_init_png) /= {IMG_INIT_FLAGS_ENUM_API}.img_init_png then
							print ("SDL_image could not initialize! SDL_image Error: " + {SDL_ERROR}.sdl_get_error)
							success := False
						end
					else
						print ("Renderer could not be created! SDL Error: " + {SDL_ERROR}.sdl_get_error)
						success := False
					end
				else
					print ("Window could not be created! SDL_Error: " + {SDL_ERROR}.sdl_get_error)
					success := False
				end
			end
		end

	load_media
			-- loads media.
		do
				-- Load Foo's texture
			if attached foo_texture as l_foo_texture then
				l_foo_texture.load_from_file (create {PATH}.make_from_string ("foo.png"))
				if l_foo_texture.texture = Void then
					print ("Failed to load Texture image!%N")
					success := False
				end
			end

				-- Load Backgrounds's texture
			if attached background_texture as l_background_texture then
				l_background_texture.load_from_file (create {PATH}.make_from_string ("background.png"))
				if l_background_texture.texture = Void then
					print ("Failed to load Texture image!%N")
					success := False
				end
			end
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

	success: BOOLEAN
			-- is everything ok?

	foo_texture: detachable LTEXTURES

	background_texture: detachable LTEXTURES

feature {NONE} -- Implementation

	SCREEN_WIDTH: INTEGER = 640
	SCREEN_HEIGHT: INTEGER = 480
			-- Screen dimension constants.

end
