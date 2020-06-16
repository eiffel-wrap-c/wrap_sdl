note
	description: "Object Representing a Texture"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	LTEXTURES

inherit

	DISPOSABLE

create
	make


feature {NONE} -- Initialization

	make (a_renderer: SDL_RENDERER_STRUCT_API)
		do
			renderer := a_renderer
		ensure
			renderer_set: renderer = a_renderer
		end

feature -- Access

	renderer: SDL_RENDERER_STRUCT_API
			-- The window renderer

	texture: detachable SDL_TEXTURE_STRUCT_API
			-- The actual hardware texture

	width: INTEGER
			-- Image width dimension

	height: INTEGER
			-- Image height dimension


feature -- Load

	load_from_file (a_path: PATH)
			-- Loads image at specified path `a_path`
			-- set the final texture at `texture`.
		do
				-- Get rid of preexisting texture
			dispose
			load_texture (a_path)
		end


feature -- Render

	render (x, y: INTEGER)
			-- Renders texture at given point (x, y).
		local
			render_quad: SDL_RECT_STRUCT_API
			res: INTEGER
		do
			if attached texture as l_texture then
					-- Set rendering space and render to screen.
				create render_quad.make
				render_quad.set_x (x)
				render_quad.set_y (y)
				render_quad.set_w (width)
				render_quad.set_h (height)
				res := {SDL_RENDER}.sdl_render_copy (renderer,l_texture, Void, render_quad)
			end
		end


feature -- Removal

	dispose
		do
				-- free texture if it exist
			if attached texture as l_texture then
				{SDL_RENDER_FUNCTIONS_API}.sdl_destroy_texture (l_texture)
			end
			texture := Void
			width := 0
			height := 0
		end

feature {NONE} -- Implementation

	load_texture (a_path: PATH)
			-- Loads individual image by path `a_path`
		local
			loaded_surface: SDL_SURFACE_STRUCT_API
			res: INTEGER
		do
			loaded_surface := {SDL_IMAGE_FUNCTIONS}.img_load ((create {C_STRING}.make (a_path.name)).item)
			if loaded_surface = Void then
				print ("Unable to load image " + a_path.name + {SDL_ERROR}.sdl_get_error + "%N")
			else
				if attached loaded_surface.format as l_format then
						-- Color key image.
					res :={SDL_SURFACE}.sdl_set_color_key (loaded_surface, 1, {SDL_PIXELS_FUNCTIONS_API}.sdl_map_rgb (l_format,0, 0xFF, 0xFF))
						-- Create texture from surface pixels.
					texture := {SDL_RENDER_FUNCTIONS_API}.sdl_create_texture_from_surface (renderer, loaded_surface)
					if texture = Void then
						print ({STRING_32}"Unable to create texture from image " + a_path.absolute_path.name.to_string_32 + " - "  + {SDL_ERROR}.sdl_get_error + "%N")
						{SDL_SURFACE_FUNCTIONS_API}.sdl_free_surface (loaded_surface)
					else
						-- Get image dimensions
						width := loaded_surface.w
						height := loaded_surface.h
					end
				else
					print ("Unable to get surface format%N")
				end
					-- Get rid of old loaded surface
				{SDL_SURFACE}.sdl_free_surface (loaded_surface)
			end
		end

end
