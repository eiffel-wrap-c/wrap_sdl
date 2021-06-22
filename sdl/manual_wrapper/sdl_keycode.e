note
	description: "Summary description for {SDL_KEYCODE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SDL_KEYCODE

feature -- Access

	SDLK_UP: INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDLK_UP"
		end

	SDLK_DOWN: INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDLK_DOWN"
		end

	SDLK_LEFT: INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDLK_LEFT"
		end

	SDLK_RIGHT: INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDLK_RIGHT"
		end

	SDLK_LCTRL: INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDLK_LCTRL"
		end

	SDLK_RCTRL: INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDLK_RCTRL"
		end

		--    SDLK_PRINTSCREEN = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_PRINTSCREEN),
		--    SDLK_SCROLLLOCK = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_SCROLLLOCK),
		--    SDLK_PAUSE = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_PAUSE),
		--    SDLK_INSERT = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_INSERT),
		--    SDLK_HOME = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_HOME),
		--    SDLK_PAGEUP = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_PAGEUP),
		--    SDLK_DELETE = '\177',
		--    SDLK_END = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_END),
		--    SDLK_PAGEDOWN = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_PAGEDOWN),
		--    SDLK_RIGHT = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_RIGHT),
		--    SDLK_LEFT = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_LEFT),
		--    SDLK_DOWN = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_DOWN),
		--    SDLK_UP = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_UP),

end
