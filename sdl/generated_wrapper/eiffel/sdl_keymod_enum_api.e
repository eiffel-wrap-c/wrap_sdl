-- enum wrapper
class SDL_KEYMOD_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = kmod_none or a_value = kmod_lshift or a_value = kmod_rshift or a_value = kmod_lctrl or a_value = kmod_rctrl or a_value = kmod_lalt or a_value = kmod_ralt or a_value = kmod_lgui or a_value = kmod_rgui or a_value = kmod_num or a_value = kmod_caps or a_value = kmod_mode or a_value = kmod_reserved or a_value = kmod_ctrl or a_value = kmod_shift or a_value = kmod_alt or a_value = kmod_gui
		end

	kmod_none: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"KMOD_NONE"
		end

	kmod_lshift: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"KMOD_LSHIFT"
		end

	kmod_rshift: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"KMOD_RSHIFT"
		end

	kmod_lctrl: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"KMOD_LCTRL"
		end

	kmod_rctrl: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"KMOD_RCTRL"
		end

	kmod_lalt: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"KMOD_LALT"
		end

	kmod_ralt: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"KMOD_RALT"
		end

	kmod_lgui: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"KMOD_LGUI"
		end

	kmod_rgui: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"KMOD_RGUI"
		end

	kmod_num: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"KMOD_NUM"
		end

	kmod_caps: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"KMOD_CAPS"
		end

	kmod_mode: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"KMOD_MODE"
		end

	kmod_reserved: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"KMOD_RESERVED"
		end

	kmod_ctrl: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"KMOD_CTRL"
		end

	kmod_shift: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"KMOD_SHIFT"
		end

	kmod_alt: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"KMOD_ALT"
		end

	kmod_gui: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"KMOD_GUI"
		end

end
