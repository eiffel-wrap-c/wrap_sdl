note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class SDL_MIXER_FUNCTIONS_API


feature -- Access

	mix_init (flags: INTEGER): INTEGER
		external
			"C inline use <SDL_mixer.h>"
		alias
			"[
				return Mix_Init ((int)$flags);
			]"
		end

	mix_open_audio_device (frequency: INTEGER; format: NATURAL; channels: INTEGER; chunksize: INTEGER; device: POINTER; allowed_changes: INTEGER): INTEGER
		external
			"C inline use <SDL_mixer.h>"
		alias
			"[
				return Mix_OpenAudioDevice ((int)$frequency, (Uint16)$format, (int)$channels, (int)$chunksize, (char const*)$device, (int)$allowed_changes);
			]"
		end

	mix_allocate_channels (numchans: INTEGER): INTEGER
		external
			"C inline use <SDL_mixer.h>"
		alias
			"[
				return Mix_AllocateChannels ((int)$numchans);
			]"
		end

	mix_query_spec (frequency: TYPED_POINTER [INTEGER]; format: POINTER; channels: TYPED_POINTER [INTEGER]): INTEGER 
		do
			Result := c_mix_query_spec (frequency, format, channels)
		ensure
			instance_free: class
		end

	mix_load_mus (file: POINTER): POINTER
		external
			"C inline use <SDL_mixer.h>"
		alias
			"[
				return Mix_LoadMUS ((char const*)$file);
			]"
		end

	mix_free_music (music: MIX_MUSIC_STRUCT_API) 
		do
			c_mix_free_music (music.item)
		ensure
			instance_free: class
		end

	mix_set_panning (channel: INTEGER; left: CHARACTER; right: CHARACTER): INTEGER 
		do
			Result := c_mix_set_panning (channel, left, right)
		ensure
			instance_free: class
		end

	mix_play_channel_timed (channel: INTEGER; chunk: MIX_CHUNK_STRUCT_API; loops: INTEGER; ticks: INTEGER): INTEGER 
		do
			Result := c_mix_play_channel_timed (channel, chunk.item, loops, ticks)
		ensure
			instance_free: class
		end

	mix_play_music (music: MIX_MUSIC_STRUCT_API; loops: INTEGER): INTEGER 
		do
			Result := c_mix_play_music (music.item, loops)
		ensure
			instance_free: class
		end

	mix_volume_music (volume: INTEGER): INTEGER
		external
			"C inline use <SDL_mixer.h>"
		alias
			"[
				return Mix_VolumeMusic ((int)$volume);
			]"
		end

	mix_halt_channel (channel: INTEGER): INTEGER
		external
			"C inline use <SDL_mixer.h>"
		alias
			"[
				return Mix_HaltChannel ((int)$channel);
			]"
		end

	mix_halt_music: INTEGER
		external
			"C inline use <SDL_mixer.h>"
		alias
			"[
				return Mix_HaltMusic ();
			]"
		end

	mix_playing (channel: INTEGER): INTEGER
		external
			"C inline use <SDL_mixer.h>"
		alias
			"[
				return Mix_Playing ((int)$channel);
			]"
		end

	mix_set_music_cmd (command: POINTER): INTEGER
		external
			"C inline use <SDL_mixer.h>"
		alias
			"[
				return Mix_SetMusicCMD ((char const*)$command);
			]"
		end

	mix_close_audio
		external
			"C inline use <SDL_mixer.h>"
		alias
			"[
				Mix_CloseAudio ();
			]"
		end

feature -- Externals

	c_mix_query_spec (frequency: TYPED_POINTER [INTEGER]; format: POINTER; channels: TYPED_POINTER [INTEGER]): INTEGER
		external
			"C inline use <SDL_mixer.h>"
		alias
			"[
				return Mix_QuerySpec ((int*)$frequency, (Uint16*)$format, (int*)$channels);
			]"
		end

	c_mix_free_music (music: POINTER)
		external
			"C inline use <SDL_mixer.h>"
		alias
			"[
				Mix_FreeMusic ((Mix_Music*)$music);
			]"
		end

	c_mix_set_panning (channel: INTEGER; left: CHARACTER; right: CHARACTER): INTEGER
		external
			"C inline use <SDL_mixer.h>"
		alias
			"[
				return Mix_SetPanning ((int)$channel, (Uint8)$left, (Uint8)$right);
			]"
		end

	c_mix_play_channel_timed (channel: INTEGER; chunk: POINTER; loops: INTEGER; ticks: INTEGER): INTEGER
		external
			"C inline use <SDL_mixer.h>"
		alias
			"[
				return Mix_PlayChannelTimed ((int)$channel, (Mix_Chunk*)$chunk, (int)$loops, (int)$ticks);
			]"
		end

	c_mix_play_music (music: POINTER; loops: INTEGER): INTEGER
		external
			"C inline use <SDL_mixer.h>"
		alias
			"[
				return Mix_PlayMusic ((Mix_Music*)$music, (int)$loops);
			]"
		end

feature -- Externals Address

end
