-- enum wrapper
class SDL_TEXTURE_ACCESS_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = sdl_textureaccess_static or a_value = sdl_textureaccess_streaming or a_value = sdl_textureaccess_target
		end

	sdl_textureaccess_static: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_TEXTUREACCESS_STATIC"
		end

	sdl_textureaccess_streaming: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_TEXTUREACCESS_STREAMING"
		end

	sdl_textureaccess_target: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_TEXTUREACCESS_TARGET"
		end

end
