note
	description: "Summary description for {SDL_AUDIO}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SDL_AUDIO

feature

	audio_s16sys: INTEGER_32
		external
			"C inline use <SDL.h>"
		alias
			"AUDIO_S16SYS"
		end


end
