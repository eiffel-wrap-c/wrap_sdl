note
	description: "Summary description for {SDL_RENDER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SDL_RENDER

inherit

	SDL_RENDER_FUNCTIONS_API
		rename
			sdl_render_copy as sdl_render_copy_api
		end


feature -- Access	

	sdl_render_copy (renderer: SDL_RENDERER_STRUCT_API; texture: SDL_TEXTURE_STRUCT_API; srcrect: detachable SDL_RECT_STRUCT_API; dstrect: detachable SDL_RECT_STRUCT_API): INTEGER
		local
			srcrect_ptr: POINTER
			dstrect_ptr: POINTER

		do
			if attached srcrect as l_srcrect then
				srcrect_ptr :=l_srcrect.item
			end
			if attached dstrect as l_dst_rect then
				dstrect_ptr := l_dst_rect.item
			end
			Result := c_sdl_render_copy (renderer.item, texture.item, srcrect_ptr, dstrect_ptr)
		ensure
			instance_free: class
		end

end
