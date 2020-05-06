note
	description: "Summary description for {SDL_SURFACE}."
	date: "$Date$"
	revision: "$Revision$"

class
	SDL_SURFACE

inherit

	SDL_SURFACE_FUNCTIONS_API
		rename
			sdl_fill_rect as sdl_fill_rect_api,
			sdl_upper_blit as sdl_upper_blit_api
		end


feature	-- Access

	sdl_fill_rect (dst: SDL_SURFACE_STRUCT_API; rect: detachable SDL_RECT_STRUCT_API; color: INTEGER): INTEGER
		local
			l_rect: POINTER
		do
			if attached rect then
				l_rect := rect.item
			end
			Result := c_sdl_fill_rect (dst.item, l_rect, color)
		ensure
			instance_free: class
		end

	sdl_upper_blit (src: SDL_SURFACE_STRUCT_API; srcrect: detachable SDL_RECT_STRUCT_API; dst: SDL_SURFACE_STRUCT_API; dstrect: detachable SDL_RECT_STRUCT_API): INTEGER
		local
			l_srcrect: POINTER
			l_dstrect: POINTER
		do
			if attached srcrect then
				l_srcrect := srcrect.item
			end
			if attached dstrect then
				l_dstrect := dstrect.item
			end
			Result := c_sdl_upper_blit (src.item, l_srcrect, dst.item, l_dstrect)
		ensure
			instance_free: class
		end


end
