note
	description: "Summary description for {SDL_IMAGE_FUNCTIONS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SDL_IMAGE_FUNCTIONS

inherit

	SDL_IMAGE_FUNCTIONS_API
		rename
			img_load as img_load_api
		end


feature -- Access

	img_load (file: POINTER): detachable SDL_SURFACE_STRUCT_API
		local
			l_ptr:  POINTER
		do
			l_ptr := img_load_api (file)
			if l_ptr /= default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			instance_free: class
		end

end
