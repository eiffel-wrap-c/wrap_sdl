note
	description: "Summary description for {SDL_ERROR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SDL_ERROR

inherit

	SDL_ERROR_FUNCTIONS_API
		rename
			sdl_get_error as sdl_get_error_api
		end


feature -- Access

	sdl_get_error: STRING
		local
			l_ptr: POINTER
		do
			Result := "Unknown"
			l_ptr := sdl_get_error_api
			if l_ptr /= default_pointer then
				create Result.make_from_c (l_ptr)
			end
		end
end
