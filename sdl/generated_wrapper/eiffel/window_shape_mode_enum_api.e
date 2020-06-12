-- enum wrapper
class WINDOW_SHAPE_MODE_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = shapemodedefault or a_value = shapemodebinarizealpha or a_value = shapemodereversebinarizealpha or a_value = shapemodecolorkey
		end

	shapemodedefault: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"ShapeModeDefault"
		end

	shapemodebinarizealpha: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"ShapeModeBinarizeAlpha"
		end

	shapemodereversebinarizealpha: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"ShapeModeReverseBinarizeAlpha"
		end

	shapemodecolorkey: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"ShapeModeColorKey"
		end

end
