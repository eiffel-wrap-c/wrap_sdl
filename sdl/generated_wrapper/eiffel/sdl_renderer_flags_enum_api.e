-- enum wrapper
class SDL_RENDERER_FLAGS_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = sdl_renderer_software or a_value = sdl_renderer_accelerated or a_value = sdl_renderer_presentvsync or a_value = sdl_renderer_targettexture
		end

	sdl_renderer_software: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_RENDERER_SOFTWARE"
		end

	sdl_renderer_accelerated: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_RENDERER_ACCELERATED"
		end

	sdl_renderer_presentvsync: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_RENDERER_PRESENTVSYNC"
		end

	sdl_renderer_targettexture: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_RENDERER_TARGETTEXTURE"
		end

end
