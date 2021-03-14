note
	description: "Summary description for {MIX}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	MIX

inherit
	SDL_MIXER_FUNCTIONS_API

feature
	mix_play_channel (channel: INTEGER; chunk: MIX_CHUNK_STRUCT_API; loops: INTEGER): INTEGER
		do
			Result := mix_play_channel_timed (channel, chunk, loops, -1)
		ensure
			instance_free: class
		end

end
