-- enum wrapper
class SDL_EVENTACTION_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = sdl_addevent or a_value = sdl_peekevent or a_value = sdl_getevent
		end

	sdl_addevent: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_ADDEVENT"
		end

	sdl_peekevent: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PEEKEVENT"
		end

	sdl_getevent: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_GETEVENT"
		end

end
