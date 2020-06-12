-- enum wrapper
class SDL_WINDOW_EVENT_ID_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = sdl_windowevent_none or a_value = sdl_windowevent_shown or a_value = sdl_windowevent_hidden or a_value = sdl_windowevent_exposed or a_value = sdl_windowevent_moved or a_value = sdl_windowevent_resized or a_value = sdl_windowevent_size_changed or a_value = sdl_windowevent_minimized or a_value = sdl_windowevent_maximized or a_value = sdl_windowevent_restored or a_value = sdl_windowevent_enter or a_value = sdl_windowevent_leave or a_value = sdl_windowevent_focus_gained or a_value = sdl_windowevent_focus_lost or a_value = sdl_windowevent_close or a_value = sdl_windowevent_take_focus or a_value = sdl_windowevent_hit_test
		end

	sdl_windowevent_none: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOWEVENT_NONE"
		end

	sdl_windowevent_shown: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOWEVENT_SHOWN"
		end

	sdl_windowevent_hidden: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOWEVENT_HIDDEN"
		end

	sdl_windowevent_exposed: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOWEVENT_EXPOSED"
		end

	sdl_windowevent_moved: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOWEVENT_MOVED"
		end

	sdl_windowevent_resized: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOWEVENT_RESIZED"
		end

	sdl_windowevent_size_changed: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOWEVENT_SIZE_CHANGED"
		end

	sdl_windowevent_minimized: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOWEVENT_MINIMIZED"
		end

	sdl_windowevent_maximized: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOWEVENT_MAXIMIZED"
		end

	sdl_windowevent_restored: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOWEVENT_RESTORED"
		end

	sdl_windowevent_enter: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOWEVENT_ENTER"
		end

	sdl_windowevent_leave: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOWEVENT_LEAVE"
		end

	sdl_windowevent_focus_gained: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOWEVENT_FOCUS_GAINED"
		end

	sdl_windowevent_focus_lost: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOWEVENT_FOCUS_LOST"
		end

	sdl_windowevent_close: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOWEVENT_CLOSE"
		end

	sdl_windowevent_take_focus: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOWEVENT_TAKE_FOCUS"
		end

	sdl_windowevent_hit_test: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOWEVENT_HIT_TEST"
		end

end
