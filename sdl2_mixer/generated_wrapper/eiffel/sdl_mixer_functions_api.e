note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class SDL_MIXER_FUNCTIONS_API


feature -- Access

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

feature -- Externals Address

end
