note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class SDL_EVENTS_FUNCTIONS_API


feature -- Access

	sdl_has_event (type: INTEGER): INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"[
				return SDL_HasEvent ((Uint32)$type);
			]"
		end

	sdl_flush_event (type: INTEGER)
		external
			"C inline use <SDL.h>"
		alias
			"[
				SDL_FlushEvent ((Uint32)$type);
			]"
		end

	sdl_poll_event (event: SDL_EVENT_UNION_API): INTEGER 
		do
			Result := c_sdl_poll_event (event.item)
		ensure
			instance_free: class
		end

	sdl_wait_event (event: SDL_EVENT_UNION_API): INTEGER 
		do
			Result := c_sdl_wait_event (event.item)
		ensure
			instance_free: class
		end

	sdl_push_event (event: SDL_EVENT_UNION_API): INTEGER 
		do
			Result := c_sdl_push_event (event.item)
		ensure
			instance_free: class
		end

feature -- Externals

	c_sdl_poll_event (event: POINTER): INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"[
				return SDL_PollEvent ((SDL_Event*)$event);
			]"
		end

	c_sdl_wait_event (event: POINTER): INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"[
				return SDL_WaitEvent ((SDL_Event*)$event);
			]"
		end

	c_sdl_push_event (event: POINTER): INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"[
				return SDL_PushEvent ((SDL_Event*)$event);
			]"
		end

feature -- Externals Address

end
