note
	description: "Summary description for {SDL_TIMER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SDL_TIMER
inherit
	SDL_TIMER_FUNCTIONS_API

feature
	sdl_get_performance_frequency: NATURAL_64
		external
			"C inline use <SDL.h>"
		alias
			"[
				return SDL_GetPerformanceFrequency ();
			]"
		end

	sdl_get_performance_counter: NATURAL_64
		external
			"C inline use <SDL.h>"
		alias
			"[
				return SDL_GetPerformanceCounter ();
			]"
		end

end
