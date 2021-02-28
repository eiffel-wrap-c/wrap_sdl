-- enum wrapper
class SDL_PIXEL_FORMAT_ENUM_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = sdl_pixelformat_unknown or a_value = sdl_pixelformat_index1lsb or a_value = sdl_pixelformat_index1msb or a_value = sdl_pixelformat_index4lsb or a_value = sdl_pixelformat_index4msb or a_value = sdl_pixelformat_index8 or a_value = sdl_pixelformat_rgb332 or a_value = sdl_pixelformat_xrgb4444 or a_value = sdl_pixelformat_rgb444 or a_value = sdl_pixelformat_xbgr4444 or a_value = sdl_pixelformat_bgr444 or a_value = sdl_pixelformat_xrgb1555 or a_value = sdl_pixelformat_rgb555 or a_value = sdl_pixelformat_xbgr1555 or a_value = sdl_pixelformat_bgr555 or a_value = sdl_pixelformat_argb4444 or a_value = sdl_pixelformat_rgba4444 or a_value = sdl_pixelformat_abgr4444 or a_value = sdl_pixelformat_bgra4444 or a_value = sdl_pixelformat_argb1555 or a_value = sdl_pixelformat_rgba5551 or a_value = sdl_pixelformat_abgr1555 or a_value = sdl_pixelformat_bgra5551 or a_value = sdl_pixelformat_rgb565 or a_value = sdl_pixelformat_bgr565 or a_value = sdl_pixelformat_rgb24 or a_value = sdl_pixelformat_bgr24 or a_value = sdl_pixelformat_xrgb8888 or a_value = sdl_pixelformat_rgb888 or a_value = sdl_pixelformat_rgbx8888 or a_value = sdl_pixelformat_xbgr8888 or a_value = sdl_pixelformat_bgr888 or a_value = sdl_pixelformat_bgrx8888 or a_value = sdl_pixelformat_argb8888 or a_value = sdl_pixelformat_rgba8888 or a_value = sdl_pixelformat_abgr8888 or a_value = sdl_pixelformat_bgra8888 or a_value = sdl_pixelformat_argb2101010 or a_value = sdl_pixelformat_rgba32 or a_value = sdl_pixelformat_argb32 or a_value = sdl_pixelformat_bgra32 or a_value = sdl_pixelformat_abgr32 or a_value = sdl_pixelformat_yv12 or a_value = sdl_pixelformat_iyuv or a_value = sdl_pixelformat_yuy2 or a_value = sdl_pixelformat_uyvy or a_value = sdl_pixelformat_yvyu or a_value = sdl_pixelformat_nv12 or a_value = sdl_pixelformat_nv21 or a_value = sdl_pixelformat_external_oes
		end

	sdl_pixelformat_unknown: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_UNKNOWN"
		end

	sdl_pixelformat_index1lsb: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_INDEX1LSB"
		end

	sdl_pixelformat_index1msb: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_INDEX1MSB"
		end

	sdl_pixelformat_index4lsb: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_INDEX4LSB"
		end

	sdl_pixelformat_index4msb: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_INDEX4MSB"
		end

	sdl_pixelformat_index8: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_INDEX8"
		end

	sdl_pixelformat_rgb332: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_RGB332"
		end

	sdl_pixelformat_xrgb4444: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_XRGB4444"
		end

	sdl_pixelformat_rgb444: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_RGB444"
		end

	sdl_pixelformat_xbgr4444: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_XBGR4444"
		end

	sdl_pixelformat_bgr444: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_BGR444"
		end

	sdl_pixelformat_xrgb1555: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_XRGB1555"
		end

	sdl_pixelformat_rgb555: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_RGB555"
		end

	sdl_pixelformat_xbgr1555: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_XBGR1555"
		end

	sdl_pixelformat_bgr555: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_BGR555"
		end

	sdl_pixelformat_argb4444: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_ARGB4444"
		end

	sdl_pixelformat_rgba4444: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_RGBA4444"
		end

	sdl_pixelformat_abgr4444: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_ABGR4444"
		end

	sdl_pixelformat_bgra4444: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_BGRA4444"
		end

	sdl_pixelformat_argb1555: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_ARGB1555"
		end

	sdl_pixelformat_rgba5551: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_RGBA5551"
		end

	sdl_pixelformat_abgr1555: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_ABGR1555"
		end

	sdl_pixelformat_bgra5551: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_BGRA5551"
		end

	sdl_pixelformat_rgb565: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_RGB565"
		end

	sdl_pixelformat_bgr565: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_BGR565"
		end

	sdl_pixelformat_rgb24: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_RGB24"
		end

	sdl_pixelformat_bgr24: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_BGR24"
		end

	sdl_pixelformat_xrgb8888: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_XRGB8888"
		end

	sdl_pixelformat_rgb888: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_RGB888"
		end

	sdl_pixelformat_rgbx8888: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_RGBX8888"
		end

	sdl_pixelformat_xbgr8888: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_XBGR8888"
		end

	sdl_pixelformat_bgr888: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_BGR888"
		end

	sdl_pixelformat_bgrx8888: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_BGRX8888"
		end

	sdl_pixelformat_argb8888: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_ARGB8888"
		end

	sdl_pixelformat_rgba8888: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_RGBA8888"
		end

	sdl_pixelformat_abgr8888: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_ABGR8888"
		end

	sdl_pixelformat_bgra8888: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_BGRA8888"
		end

	sdl_pixelformat_argb2101010: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_ARGB2101010"
		end

	sdl_pixelformat_rgba32: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_RGBA32"
		end

	sdl_pixelformat_argb32: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_ARGB32"
		end

	sdl_pixelformat_bgra32: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_BGRA32"
		end

	sdl_pixelformat_abgr32: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_ABGR32"
		end

	sdl_pixelformat_yv12: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_YV12"
		end

	sdl_pixelformat_iyuv: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_IYUV"
		end

	sdl_pixelformat_yuy2: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_YUY2"
		end

	sdl_pixelformat_uyvy: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_UYVY"
		end

	sdl_pixelformat_yvyu: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_YVYU"
		end

	sdl_pixelformat_nv12: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_NV12"
		end

	sdl_pixelformat_nv21: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_NV21"
		end

	sdl_pixelformat_external_oes: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_EXTERNAL_OES"
		end

end
