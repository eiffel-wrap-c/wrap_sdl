-- enum wrapper
class MIX_INIT_FLAGS_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = mix_init_flac or a_value = mix_init_mod or a_value = mix_init_mp3 or a_value = mix_init_ogg or a_value = mix_init_mid or a_value = mix_init_opus
		end

	mix_init_flac: INTEGER 
		external
			"C inline use <SDL_mixer.h>"
		alias
			"MIX_INIT_FLAC"
		end

	mix_init_mod: INTEGER 
		external
			"C inline use <SDL_mixer.h>"
		alias
			"MIX_INIT_MOD"
		end

	mix_init_mp3: INTEGER 
		external
			"C inline use <SDL_mixer.h>"
		alias
			"MIX_INIT_MP3"
		end

	mix_init_ogg: INTEGER 
		external
			"C inline use <SDL_mixer.h>"
		alias
			"MIX_INIT_OGG"
		end

	mix_init_mid: INTEGER 
		external
			"C inline use <SDL_mixer.h>"
		alias
			"MIX_INIT_MID"
		end

	mix_init_opus: INTEGER 
		external
			"C inline use <SDL_mixer.h>"
		alias
			"MIX_INIT_OPUS"
		end

end
