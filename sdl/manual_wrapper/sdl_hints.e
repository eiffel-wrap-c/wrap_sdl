note
	description: "Summary description for {SDL_HINTS}."
	date: "$Date$"
	revision: "$Revision$"

class
	SDL_HINTS

inherit

	SDL_HINTS_FUNCTIONS_API
		rename
			sdl_set_hint as sdl_set_hint_api
		end

feature	-- Access

	sdl_set_hint (name: STRING; value: STRING): BOOLEAN
			-- Set a hint `name` with value `value`.
			-- Returns True if the hint was set, False otherwise.
		note
			eis: "name=sdl_hint", "src=https://wiki.libsdl.org/SDL_SetHint", "protocol=uri"
		do
			Result := sdl_set_hint_api ((create {C_STRING}.make (name)).item, (create {C_STRING}.make (value)).item).to_boolean
		ensure
			instance_free: class
		end


end
