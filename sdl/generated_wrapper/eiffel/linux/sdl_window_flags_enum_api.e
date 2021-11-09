-- enum wrapper
class SDL_WINDOW_FLAGS_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = sdl_window_fullscreen or a_value = sdl_window_opengl or a_value = sdl_window_shown or a_value = sdl_window_hidden or a_value = sdl_window_borderless or a_value = sdl_window_resizable or a_value = sdl_window_minimized or a_value = sdl_window_maximized or a_value = sdl_window_mouse_grabbed or a_value = sdl_window_input_focus or a_value = sdl_window_mouse_focus or a_value = sdl_window_fullscreen_desktop or a_value = sdl_window_foreign or a_value = sdl_window_allow_highdpi or a_value = sdl_window_mouse_capture or a_value = sdl_window_always_on_top or a_value = sdl_window_skip_taskbar or a_value = sdl_window_utility or a_value = sdl_window_tooltip or a_value = sdl_window_popup_menu or a_value = sdl_window_keyboard_grabbed or a_value = sdl_window_vulkan or a_value = sdl_window_metal or a_value = sdl_window_input_grabbed
		end

	sdl_window_fullscreen: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_FULLSCREEN"
		end

	sdl_window_opengl: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_OPENGL"
		end

	sdl_window_shown: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_SHOWN"
		end

	sdl_window_hidden: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_HIDDEN"
		end

	sdl_window_borderless: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_BORDERLESS"
		end

	sdl_window_resizable: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_RESIZABLE"
		end

	sdl_window_minimized: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_MINIMIZED"
		end

	sdl_window_maximized: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_MAXIMIZED"
		end

	sdl_window_mouse_grabbed: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_MOUSE_GRABBED"
		end

	sdl_window_input_focus: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_INPUT_FOCUS"
		end

	sdl_window_mouse_focus: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_MOUSE_FOCUS"
		end

	sdl_window_fullscreen_desktop: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_FULLSCREEN_DESKTOP"
		end

	sdl_window_foreign: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_FOREIGN"
		end

	sdl_window_allow_highdpi: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_ALLOW_HIGHDPI"
		end

	sdl_window_mouse_capture: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_MOUSE_CAPTURE"
		end

	sdl_window_always_on_top: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_ALWAYS_ON_TOP"
		end

	sdl_window_skip_taskbar: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_SKIP_TASKBAR"
		end

	sdl_window_utility: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_UTILITY"
		end

	sdl_window_tooltip: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_TOOLTIP"
		end

	sdl_window_popup_menu: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_POPUP_MENU"
		end

	sdl_window_keyboard_grabbed: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_KEYBOARD_GRABBED"
		end

	sdl_window_vulkan: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_VULKAN"
		end

	sdl_window_metal: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_METAL"
		end

	sdl_window_input_grabbed: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_INPUT_GRABBED"
		end

end
