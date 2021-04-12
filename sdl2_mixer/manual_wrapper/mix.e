note
	description: "Summary description for {MIX}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	MIX

inherit

	SDL_MIXER_FUNCTIONS_API
		rename
			mix_load_mus as mix_load_mus_api,
			mix_playing_music as mix_playing_music_api
		end

feature

	mix_play_channel (channel: INTEGER; chunk: MIX_CHUNK_STRUCT_API; loops: INTEGER): INTEGER
		do
			Result := mix_play_channel_timed (channel, chunk, loops, -1)
		ensure
			instance_free: class
		end

	mix_max_volume: like {SDL_CONSTANT_API}.sdl_mix_maxvolume
		do
			Result := {SDL_CONSTANT_API}.sdl_mix_maxvolume
		ensure
			instance_free: class
		end

	mix_load_mus (file: STRING): detachable MIX_MUSIC_STRUCT_API
		local
			p: POINTER
		do
			p := mix_load_mus_api ((create {C_STRING}.make (file)).item)
			if p /= default_pointer then
				create Result.make_by_pointer (p)
			end
		ensure
			instance_free: class
		end

	mix_playing_music: BOOLEAN
		do
			Result := mix_playing_music_api /= 0
		ensure
			instance_free: class
		end

end
