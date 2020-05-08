-- enum wrapper
class SDL_SCANCODE_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = sdl_scancode_unknown or a_value = sdl_scancode_a or a_value = sdl_scancode_b or a_value = sdl_scancode_c or a_value = sdl_scancode_d or a_value = sdl_scancode_e or a_value = sdl_scancode_f or a_value = sdl_scancode_g or a_value = sdl_scancode_h or a_value = sdl_scancode_i or a_value = sdl_scancode_j or a_value = sdl_scancode_k or a_value = sdl_scancode_l or a_value = sdl_scancode_m or a_value = sdl_scancode_n or a_value = sdl_scancode_o or a_value = sdl_scancode_p or a_value = sdl_scancode_q or a_value = sdl_scancode_r or a_value = sdl_scancode_s or a_value = sdl_scancode_t or a_value = sdl_scancode_u or a_value = sdl_scancode_v or a_value = sdl_scancode_w or a_value = sdl_scancode_x or a_value = sdl_scancode_y or a_value = sdl_scancode_z or a_value = sdl_scancode_1 or a_value = sdl_scancode_2 or a_value = sdl_scancode_3 or a_value = sdl_scancode_4 or a_value = sdl_scancode_5 or a_value = sdl_scancode_6 or a_value = sdl_scancode_7 or a_value = sdl_scancode_8 or a_value = sdl_scancode_9 or a_value = sdl_scancode_0 or a_value = sdl_scancode_return or a_value = sdl_scancode_escape or a_value = sdl_scancode_backspace or a_value = sdl_scancode_tab or a_value = sdl_scancode_space or a_value = sdl_scancode_minus or a_value = sdl_scancode_equals or a_value = sdl_scancode_leftbracket or a_value = sdl_scancode_rightbracket or a_value = sdl_scancode_backslash or a_value = sdl_scancode_nonushash or a_value = sdl_scancode_semicolon or a_value = sdl_scancode_apostrophe or a_value = sdl_scancode_grave or a_value = sdl_scancode_comma or a_value = sdl_scancode_period or a_value = sdl_scancode_slash or a_value = sdl_scancode_capslock or a_value = sdl_scancode_f1 or a_value = sdl_scancode_f2 or a_value = sdl_scancode_f3 or a_value = sdl_scancode_f4 or a_value = sdl_scancode_f5 or a_value = sdl_scancode_f6 or a_value = sdl_scancode_f7 or a_value = sdl_scancode_f8 or a_value = sdl_scancode_f9 or a_value = sdl_scancode_f10 or a_value = sdl_scancode_f11 or a_value = sdl_scancode_f12 or a_value = sdl_scancode_printscreen or a_value = sdl_scancode_scrolllock or a_value = sdl_scancode_pause or a_value = sdl_scancode_insert or a_value = sdl_scancode_home or a_value = sdl_scancode_pageup or a_value = sdl_scancode_delete or a_value = sdl_scancode_end or a_value = sdl_scancode_pagedown or a_value = sdl_scancode_right or a_value = sdl_scancode_left or a_value = sdl_scancode_down or a_value = sdl_scancode_up or a_value = sdl_scancode_numlockclear or a_value = sdl_scancode_kp_divide or a_value = sdl_scancode_kp_multiply or a_value = sdl_scancode_kp_minus or a_value = sdl_scancode_kp_plus or a_value = sdl_scancode_kp_enter or a_value = sdl_scancode_kp_1 or a_value = sdl_scancode_kp_2 or a_value = sdl_scancode_kp_3 or a_value = sdl_scancode_kp_4 or a_value = sdl_scancode_kp_5 or a_value = sdl_scancode_kp_6 or a_value = sdl_scancode_kp_7 or a_value = sdl_scancode_kp_8 or a_value = sdl_scancode_kp_9 or a_value = sdl_scancode_kp_0 or a_value = sdl_scancode_kp_period or a_value = sdl_scancode_nonusbackslash or a_value = sdl_scancode_application or a_value = sdl_scancode_power or a_value = sdl_scancode_kp_equals or a_value = sdl_scancode_f13 or a_value = sdl_scancode_f14 or a_value = sdl_scancode_f15 or a_value = sdl_scancode_f16 or a_value = sdl_scancode_f17 or a_value = sdl_scancode_f18 or a_value = sdl_scancode_f19 or a_value = sdl_scancode_f20 or a_value = sdl_scancode_f21 or a_value = sdl_scancode_f22 or a_value = sdl_scancode_f23 or a_value = sdl_scancode_f24 or a_value = sdl_scancode_execute or a_value = sdl_scancode_help or a_value = sdl_scancode_menu or a_value = sdl_scancode_select or a_value = sdl_scancode_stop or a_value = sdl_scancode_again or a_value = sdl_scancode_undo or a_value = sdl_scancode_cut or a_value = sdl_scancode_copy or a_value = sdl_scancode_paste or a_value = sdl_scancode_find or a_value = sdl_scancode_mute or a_value = sdl_scancode_volumeup or a_value = sdl_scancode_volumedown or a_value = sdl_scancode_kp_comma or a_value = sdl_scancode_kp_equalsas400 or a_value = sdl_scancode_international1 or a_value = sdl_scancode_international2 or a_value = sdl_scancode_international3 or a_value = sdl_scancode_international4 or a_value = sdl_scancode_international5 or a_value = sdl_scancode_international6 or a_value = sdl_scancode_international7 or a_value = sdl_scancode_international8 or a_value = sdl_scancode_international9 or a_value = sdl_scancode_lang1 or a_value = sdl_scancode_lang2 or a_value = sdl_scancode_lang3 or a_value = sdl_scancode_lang4 or a_value = sdl_scancode_lang5 or a_value = sdl_scancode_lang6 or a_value = sdl_scancode_lang7 or a_value = sdl_scancode_lang8 or a_value = sdl_scancode_lang9 or a_value = sdl_scancode_alterase or a_value = sdl_scancode_sysreq or a_value = sdl_scancode_cancel or a_value = sdl_scancode_clear or a_value = sdl_scancode_prior or a_value = sdl_scancode_return2 or a_value = sdl_scancode_separator or a_value = sdl_scancode_out or a_value = sdl_scancode_oper or a_value = sdl_scancode_clearagain or a_value = sdl_scancode_crsel or a_value = sdl_scancode_exsel or a_value = sdl_scancode_kp_00 or a_value = sdl_scancode_kp_000 or a_value = sdl_scancode_thousandsseparator or a_value = sdl_scancode_decimalseparator or a_value = sdl_scancode_currencyunit or a_value = sdl_scancode_currencysubunit or a_value = sdl_scancode_kp_leftparen or a_value = sdl_scancode_kp_rightparen or a_value = sdl_scancode_kp_leftbrace or a_value = sdl_scancode_kp_rightbrace or a_value = sdl_scancode_kp_tab or a_value = sdl_scancode_kp_backspace or a_value = sdl_scancode_kp_a or a_value = sdl_scancode_kp_b or a_value = sdl_scancode_kp_c or a_value = sdl_scancode_kp_d or a_value = sdl_scancode_kp_e or a_value = sdl_scancode_kp_f or a_value = sdl_scancode_kp_xor or a_value = sdl_scancode_kp_power or a_value = sdl_scancode_kp_percent or a_value = sdl_scancode_kp_less or a_value = sdl_scancode_kp_greater or a_value = sdl_scancode_kp_ampersand or a_value = sdl_scancode_kp_dblampersand or a_value = sdl_scancode_kp_verticalbar or a_value = sdl_scancode_kp_dblverticalbar or a_value = sdl_scancode_kp_colon or a_value = sdl_scancode_kp_hash or a_value = sdl_scancode_kp_space or a_value = sdl_scancode_kp_at or a_value = sdl_scancode_kp_exclam or a_value = sdl_scancode_kp_memstore or a_value = sdl_scancode_kp_memrecall or a_value = sdl_scancode_kp_memclear or a_value = sdl_scancode_kp_memadd or a_value = sdl_scancode_kp_memsubtract or a_value = sdl_scancode_kp_memmultiply or a_value = sdl_scancode_kp_memdivide or a_value = sdl_scancode_kp_plusminus or a_value = sdl_scancode_kp_clear or a_value = sdl_scancode_kp_clearentry or a_value = sdl_scancode_kp_binary or a_value = sdl_scancode_kp_octal or a_value = sdl_scancode_kp_decimal or a_value = sdl_scancode_kp_hexadecimal or a_value = sdl_scancode_lctrl or a_value = sdl_scancode_lshift or a_value = sdl_scancode_lalt or a_value = sdl_scancode_lgui or a_value = sdl_scancode_rctrl or a_value = sdl_scancode_rshift or a_value = sdl_scancode_ralt or a_value = sdl_scancode_rgui or a_value = sdl_scancode_mode or a_value = sdl_scancode_audionext or a_value = sdl_scancode_audioprev or a_value = sdl_scancode_audiostop or a_value = sdl_scancode_audioplay or a_value = sdl_scancode_audiomute or a_value = sdl_scancode_mediaselect or a_value = sdl_scancode_www or a_value = sdl_scancode_mail or a_value = sdl_scancode_calculator or a_value = sdl_scancode_computer or a_value = sdl_scancode_ac_search or a_value = sdl_scancode_ac_home or a_value = sdl_scancode_ac_back or a_value = sdl_scancode_ac_forward or a_value = sdl_scancode_ac_stop or a_value = sdl_scancode_ac_refresh or a_value = sdl_scancode_ac_bookmarks or a_value = sdl_scancode_brightnessdown or a_value = sdl_scancode_brightnessup or a_value = sdl_scancode_displayswitch or a_value = sdl_scancode_kbdillumtoggle or a_value = sdl_scancode_kbdillumdown or a_value = sdl_scancode_kbdillumup or a_value = sdl_scancode_eject or a_value = sdl_scancode_sleep or a_value = sdl_scancode_app1 or a_value = sdl_scancode_app2 or a_value = sdl_scancode_audiorewind or a_value = sdl_scancode_audiofastforward or a_value = sdl_num_scancodes
		end

	sdl_scancode_unknown: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_UNKNOWN"
		end

	sdl_scancode_a: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_A"
		end

	sdl_scancode_b: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_B"
		end

	sdl_scancode_c: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_C"
		end

	sdl_scancode_d: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_D"
		end

	sdl_scancode_e: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_E"
		end

	sdl_scancode_f: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F"
		end

	sdl_scancode_g: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_G"
		end

	sdl_scancode_h: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_H"
		end

	sdl_scancode_i: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_I"
		end

	sdl_scancode_j: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_J"
		end

	sdl_scancode_k: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_K"
		end

	sdl_scancode_l: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_L"
		end

	sdl_scancode_m: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_M"
		end

	sdl_scancode_n: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_N"
		end

	sdl_scancode_o: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_O"
		end

	sdl_scancode_p: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_P"
		end

	sdl_scancode_q: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_Q"
		end

	sdl_scancode_r: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_R"
		end

	sdl_scancode_s: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_S"
		end

	sdl_scancode_t: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_T"
		end

	sdl_scancode_u: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_U"
		end

	sdl_scancode_v: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_V"
		end

	sdl_scancode_w: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_W"
		end

	sdl_scancode_x: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_X"
		end

	sdl_scancode_y: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_Y"
		end

	sdl_scancode_z: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_Z"
		end

	sdl_scancode_1: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_1"
		end

	sdl_scancode_2: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_2"
		end

	sdl_scancode_3: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_3"
		end

	sdl_scancode_4: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_4"
		end

	sdl_scancode_5: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_5"
		end

	sdl_scancode_6: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_6"
		end

	sdl_scancode_7: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_7"
		end

	sdl_scancode_8: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_8"
		end

	sdl_scancode_9: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_9"
		end

	sdl_scancode_0: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_0"
		end

	sdl_scancode_return: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_RETURN"
		end

	sdl_scancode_escape: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_ESCAPE"
		end

	sdl_scancode_backspace: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_BACKSPACE"
		end

	sdl_scancode_tab: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_TAB"
		end

	sdl_scancode_space: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_SPACE"
		end

	sdl_scancode_minus: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_MINUS"
		end

	sdl_scancode_equals: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_EQUALS"
		end

	sdl_scancode_leftbracket: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_LEFTBRACKET"
		end

	sdl_scancode_rightbracket: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_RIGHTBRACKET"
		end

	sdl_scancode_backslash: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_BACKSLASH"
		end

	sdl_scancode_nonushash: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_NONUSHASH"
		end

	sdl_scancode_semicolon: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_SEMICOLON"
		end

	sdl_scancode_apostrophe: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_APOSTROPHE"
		end

	sdl_scancode_grave: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_GRAVE"
		end

	sdl_scancode_comma: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_COMMA"
		end

	sdl_scancode_period: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_PERIOD"
		end

	sdl_scancode_slash: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_SLASH"
		end

	sdl_scancode_capslock: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_CAPSLOCK"
		end

	sdl_scancode_f1: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F1"
		end

	sdl_scancode_f2: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F2"
		end

	sdl_scancode_f3: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F3"
		end

	sdl_scancode_f4: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F4"
		end

	sdl_scancode_f5: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F5"
		end

	sdl_scancode_f6: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F6"
		end

	sdl_scancode_f7: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F7"
		end

	sdl_scancode_f8: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F8"
		end

	sdl_scancode_f9: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F9"
		end

	sdl_scancode_f10: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F10"
		end

	sdl_scancode_f11: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F11"
		end

	sdl_scancode_f12: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F12"
		end

	sdl_scancode_printscreen: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_PRINTSCREEN"
		end

	sdl_scancode_scrolllock: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_SCROLLLOCK"
		end

	sdl_scancode_pause: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_PAUSE"
		end

	sdl_scancode_insert: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_INSERT"
		end

	sdl_scancode_home: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_HOME"
		end

	sdl_scancode_pageup: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_PAGEUP"
		end

	sdl_scancode_delete: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_DELETE"
		end

	sdl_scancode_end: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_END"
		end

	sdl_scancode_pagedown: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_PAGEDOWN"
		end

	sdl_scancode_right: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_RIGHT"
		end

	sdl_scancode_left: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_LEFT"
		end

	sdl_scancode_down: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_DOWN"
		end

	sdl_scancode_up: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_UP"
		end

	sdl_scancode_numlockclear: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_NUMLOCKCLEAR"
		end

	sdl_scancode_kp_divide: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_DIVIDE"
		end

	sdl_scancode_kp_multiply: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_MULTIPLY"
		end

	sdl_scancode_kp_minus: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_MINUS"
		end

	sdl_scancode_kp_plus: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_PLUS"
		end

	sdl_scancode_kp_enter: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_ENTER"
		end

	sdl_scancode_kp_1: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_1"
		end

	sdl_scancode_kp_2: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_2"
		end

	sdl_scancode_kp_3: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_3"
		end

	sdl_scancode_kp_4: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_4"
		end

	sdl_scancode_kp_5: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_5"
		end

	sdl_scancode_kp_6: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_6"
		end

	sdl_scancode_kp_7: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_7"
		end

	sdl_scancode_kp_8: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_8"
		end

	sdl_scancode_kp_9: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_9"
		end

	sdl_scancode_kp_0: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_0"
		end

	sdl_scancode_kp_period: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_PERIOD"
		end

	sdl_scancode_nonusbackslash: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_NONUSBACKSLASH"
		end

	sdl_scancode_application: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_APPLICATION"
		end

	sdl_scancode_power: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_POWER"
		end

	sdl_scancode_kp_equals: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_EQUALS"
		end

	sdl_scancode_f13: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F13"
		end

	sdl_scancode_f14: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F14"
		end

	sdl_scancode_f15: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F15"
		end

	sdl_scancode_f16: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F16"
		end

	sdl_scancode_f17: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F17"
		end

	sdl_scancode_f18: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F18"
		end

	sdl_scancode_f19: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F19"
		end

	sdl_scancode_f20: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F20"
		end

	sdl_scancode_f21: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F21"
		end

	sdl_scancode_f22: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F22"
		end

	sdl_scancode_f23: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F23"
		end

	sdl_scancode_f24: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_F24"
		end

	sdl_scancode_execute: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_EXECUTE"
		end

	sdl_scancode_help: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_HELP"
		end

	sdl_scancode_menu: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_MENU"
		end

	sdl_scancode_select: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_SELECT"
		end

	sdl_scancode_stop: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_STOP"
		end

	sdl_scancode_again: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_AGAIN"
		end

	sdl_scancode_undo: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_UNDO"
		end

	sdl_scancode_cut: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_CUT"
		end

	sdl_scancode_copy: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_COPY"
		end

	sdl_scancode_paste: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_PASTE"
		end

	sdl_scancode_find: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_FIND"
		end

	sdl_scancode_mute: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_MUTE"
		end

	sdl_scancode_volumeup: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_VOLUMEUP"
		end

	sdl_scancode_volumedown: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_VOLUMEDOWN"
		end

	sdl_scancode_kp_comma: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_COMMA"
		end

	sdl_scancode_kp_equalsas400: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_EQUALSAS400"
		end

	sdl_scancode_international1: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_INTERNATIONAL1"
		end

	sdl_scancode_international2: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_INTERNATIONAL2"
		end

	sdl_scancode_international3: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_INTERNATIONAL3"
		end

	sdl_scancode_international4: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_INTERNATIONAL4"
		end

	sdl_scancode_international5: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_INTERNATIONAL5"
		end

	sdl_scancode_international6: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_INTERNATIONAL6"
		end

	sdl_scancode_international7: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_INTERNATIONAL7"
		end

	sdl_scancode_international8: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_INTERNATIONAL8"
		end

	sdl_scancode_international9: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_INTERNATIONAL9"
		end

	sdl_scancode_lang1: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_LANG1"
		end

	sdl_scancode_lang2: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_LANG2"
		end

	sdl_scancode_lang3: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_LANG3"
		end

	sdl_scancode_lang4: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_LANG4"
		end

	sdl_scancode_lang5: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_LANG5"
		end

	sdl_scancode_lang6: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_LANG6"
		end

	sdl_scancode_lang7: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_LANG7"
		end

	sdl_scancode_lang8: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_LANG8"
		end

	sdl_scancode_lang9: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_LANG9"
		end

	sdl_scancode_alterase: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_ALTERASE"
		end

	sdl_scancode_sysreq: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_SYSREQ"
		end

	sdl_scancode_cancel: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_CANCEL"
		end

	sdl_scancode_clear: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_CLEAR"
		end

	sdl_scancode_prior: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_PRIOR"
		end

	sdl_scancode_return2: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_RETURN2"
		end

	sdl_scancode_separator: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_SEPARATOR"
		end

	sdl_scancode_out: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_OUT"
		end

	sdl_scancode_oper: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_OPER"
		end

	sdl_scancode_clearagain: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_CLEARAGAIN"
		end

	sdl_scancode_crsel: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_CRSEL"
		end

	sdl_scancode_exsel: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_EXSEL"
		end

	sdl_scancode_kp_00: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_00"
		end

	sdl_scancode_kp_000: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_000"
		end

	sdl_scancode_thousandsseparator: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_THOUSANDSSEPARATOR"
		end

	sdl_scancode_decimalseparator: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_DECIMALSEPARATOR"
		end

	sdl_scancode_currencyunit: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_CURRENCYUNIT"
		end

	sdl_scancode_currencysubunit: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_CURRENCYSUBUNIT"
		end

	sdl_scancode_kp_leftparen: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_LEFTPAREN"
		end

	sdl_scancode_kp_rightparen: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_RIGHTPAREN"
		end

	sdl_scancode_kp_leftbrace: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_LEFTBRACE"
		end

	sdl_scancode_kp_rightbrace: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_RIGHTBRACE"
		end

	sdl_scancode_kp_tab: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_TAB"
		end

	sdl_scancode_kp_backspace: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_BACKSPACE"
		end

	sdl_scancode_kp_a: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_A"
		end

	sdl_scancode_kp_b: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_B"
		end

	sdl_scancode_kp_c: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_C"
		end

	sdl_scancode_kp_d: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_D"
		end

	sdl_scancode_kp_e: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_E"
		end

	sdl_scancode_kp_f: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_F"
		end

	sdl_scancode_kp_xor: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_XOR"
		end

	sdl_scancode_kp_power: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_POWER"
		end

	sdl_scancode_kp_percent: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_PERCENT"
		end

	sdl_scancode_kp_less: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_LESS"
		end

	sdl_scancode_kp_greater: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_GREATER"
		end

	sdl_scancode_kp_ampersand: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_AMPERSAND"
		end

	sdl_scancode_kp_dblampersand: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_DBLAMPERSAND"
		end

	sdl_scancode_kp_verticalbar: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_VERTICALBAR"
		end

	sdl_scancode_kp_dblverticalbar: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_DBLVERTICALBAR"
		end

	sdl_scancode_kp_colon: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_COLON"
		end

	sdl_scancode_kp_hash: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_HASH"
		end

	sdl_scancode_kp_space: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_SPACE"
		end

	sdl_scancode_kp_at: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_AT"
		end

	sdl_scancode_kp_exclam: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_EXCLAM"
		end

	sdl_scancode_kp_memstore: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_MEMSTORE"
		end

	sdl_scancode_kp_memrecall: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_MEMRECALL"
		end

	sdl_scancode_kp_memclear: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_MEMCLEAR"
		end

	sdl_scancode_kp_memadd: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_MEMADD"
		end

	sdl_scancode_kp_memsubtract: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_MEMSUBTRACT"
		end

	sdl_scancode_kp_memmultiply: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_MEMMULTIPLY"
		end

	sdl_scancode_kp_memdivide: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_MEMDIVIDE"
		end

	sdl_scancode_kp_plusminus: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_PLUSMINUS"
		end

	sdl_scancode_kp_clear: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_CLEAR"
		end

	sdl_scancode_kp_clearentry: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_CLEARENTRY"
		end

	sdl_scancode_kp_binary: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_BINARY"
		end

	sdl_scancode_kp_octal: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_OCTAL"
		end

	sdl_scancode_kp_decimal: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_DECIMAL"
		end

	sdl_scancode_kp_hexadecimal: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KP_HEXADECIMAL"
		end

	sdl_scancode_lctrl: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_LCTRL"
		end

	sdl_scancode_lshift: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_LSHIFT"
		end

	sdl_scancode_lalt: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_LALT"
		end

	sdl_scancode_lgui: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_LGUI"
		end

	sdl_scancode_rctrl: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_RCTRL"
		end

	sdl_scancode_rshift: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_RSHIFT"
		end

	sdl_scancode_ralt: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_RALT"
		end

	sdl_scancode_rgui: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_RGUI"
		end

	sdl_scancode_mode: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_MODE"
		end

	sdl_scancode_audionext: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_AUDIONEXT"
		end

	sdl_scancode_audioprev: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_AUDIOPREV"
		end

	sdl_scancode_audiostop: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_AUDIOSTOP"
		end

	sdl_scancode_audioplay: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_AUDIOPLAY"
		end

	sdl_scancode_audiomute: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_AUDIOMUTE"
		end

	sdl_scancode_mediaselect: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_MEDIASELECT"
		end

	sdl_scancode_www: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_WWW"
		end

	sdl_scancode_mail: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_MAIL"
		end

	sdl_scancode_calculator: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_CALCULATOR"
		end

	sdl_scancode_computer: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_COMPUTER"
		end

	sdl_scancode_ac_search: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_AC_SEARCH"
		end

	sdl_scancode_ac_home: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_AC_HOME"
		end

	sdl_scancode_ac_back: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_AC_BACK"
		end

	sdl_scancode_ac_forward: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_AC_FORWARD"
		end

	sdl_scancode_ac_stop: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_AC_STOP"
		end

	sdl_scancode_ac_refresh: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_AC_REFRESH"
		end

	sdl_scancode_ac_bookmarks: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_AC_BOOKMARKS"
		end

	sdl_scancode_brightnessdown: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_BRIGHTNESSDOWN"
		end

	sdl_scancode_brightnessup: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_BRIGHTNESSUP"
		end

	sdl_scancode_displayswitch: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_DISPLAYSWITCH"
		end

	sdl_scancode_kbdillumtoggle: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KBDILLUMTOGGLE"
		end

	sdl_scancode_kbdillumdown: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KBDILLUMDOWN"
		end

	sdl_scancode_kbdillumup: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_KBDILLUMUP"
		end

	sdl_scancode_eject: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_EJECT"
		end

	sdl_scancode_sleep: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_SLEEP"
		end

	sdl_scancode_app1: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_APP1"
		end

	sdl_scancode_app2: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_APP2"
		end

	sdl_scancode_audiorewind: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_AUDIOREWIND"
		end

	sdl_scancode_audiofastforward: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SCANCODE_AUDIOFASTFORWARD"
		end

	sdl_num_scancodes: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_NUM_SCANCODES"
		end

end
