-- enum wrapper
class IMG_INIT_FLAGS_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = img_init_jpg or a_value = img_init_png or a_value = img_init_tif or a_value = img_init_webp
		end

	img_init_jpg: INTEGER 
		external
			"C inline use <SDL_image.h>"
		alias
			"IMG_INIT_JPG"
		end

	img_init_png: INTEGER 
		external
			"C inline use <SDL_image.h>"
		alias
			"IMG_INIT_PNG"
		end

	img_init_tif: INTEGER 
		external
			"C inline use <SDL_image.h>"
		alias
			"IMG_INIT_TIF"
		end

	img_init_webp: INTEGER 
		external
			"C inline use <SDL_image.h>"
		alias
			"IMG_INIT_WEBP"
		end

end
