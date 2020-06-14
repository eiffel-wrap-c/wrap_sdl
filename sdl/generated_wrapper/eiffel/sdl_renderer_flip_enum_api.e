-- enum wrapper
class SDL_RENDERER_FLIP_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = sdl_flip_none or a_value = sdl_flip_horizontal or a_value = sdl_flip_vertical
		end

	sdl_flip_none: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_FLIP_NONE"
		end

	sdl_flip_horizontal: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_FLIP_HORIZONTAL"
		end

	sdl_flip_vertical: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_FLIP_VERTICAL"
		end

end
