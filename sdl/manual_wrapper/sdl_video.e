note
	description: "Summary description for {SDL_VIDEO}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SDL_VIDEO

inherit

	SDL_VIDEO_FUNCTIONS_API
		rename
			sdl_create_window as sdl_create_window_api
		end

feature -- Access

	sdl_create_window (title: STRING; x: INTEGER; y: INTEGER; w: INTEGER; h: INTEGER; flags: INTEGER): detachable SDL_WINDOW_STRUCT_API
		local
			l_str: C_STRING
			l_ptr: POINTER
		do
			create l_str.make (title)
			l_ptr := sdl_create_window_api (l_str.item, x, y, w, h, flags)
			if l_ptr /= default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			intance_free: class
		end
end
