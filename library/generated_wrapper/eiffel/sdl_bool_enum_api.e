-- enum wrapper
class SDL_BOOL_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = sdl_false or a_value = sdl_true
		end

	sdl_false: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_FALSE"
		end

	sdl_true: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_TRUE"
		end

end
