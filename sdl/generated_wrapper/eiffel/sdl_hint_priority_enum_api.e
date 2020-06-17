-- enum wrapper
class SDL_HINT_PRIORITY_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = sdl_hint_default or a_value = sdl_hint_normal or a_value = sdl_hint_override
		end

	sdl_hint_default: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_HINT_DEFAULT"
		end

	sdl_hint_normal: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_HINT_NORMAL"
		end

	sdl_hint_override: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_HINT_OVERRIDE"
		end

end
