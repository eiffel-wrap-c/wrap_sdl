note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class SDL_USER_EVENT_STRUCT_API

inherit

	MEMORY_STRUCTURE

	
create

	make,
	make_by_pointer

feature -- Measurement

	structure_size: INTEGER 
		do
			Result := sizeof_external
		end

feature {ANY} -- Member Access

	type: INTEGER
			-- Access member `type`
		require
			exists: exists
		do
			Result := c_type (item)
		ensure
			result_correct: Result = c_type (item)
		end

	set_type (a_value: INTEGER) 
			-- Change the value of member `type` to `a_value`.
		require
			exists: exists
		do
			set_c_type (item, a_value)
		ensure
			type_set: a_value = type
		end

	timestamp: INTEGER
			-- Access member `timestamp`
		require
			exists: exists
		do
			Result := c_timestamp (item)
		ensure
			result_correct: Result = c_timestamp (item)
		end

	set_timestamp (a_value: INTEGER) 
			-- Change the value of member `timestamp` to `a_value`.
		require
			exists: exists
		do
			set_c_timestamp (item, a_value)
		ensure
			timestamp_set: a_value = timestamp
		end

	windowid: INTEGER
			-- Access member `windowID`
		require
			exists: exists
		do
			Result := c_windowid (item)
		ensure
			result_correct: Result = c_windowid (item)
		end

	set_windowid (a_value: INTEGER) 
			-- Change the value of member `windowID` to `a_value`.
		require
			exists: exists
		do
			set_c_windowid (item, a_value)
		ensure
			windowid_set: a_value = windowid
		end

	code: INTEGER
			-- Access member `code`
		require
			exists: exists
		do
			Result := c_code (item)
		ensure
			result_correct: Result = c_code (item)
		end

	set_code (a_value: INTEGER) 
			-- Change the value of member `code` to `a_value`.
		require
			exists: exists
		do
			set_c_code (item, a_value)
		ensure
			code_set: a_value = code
		end

	data1: POINTER
			-- Access member `data1`
		require
			exists: exists
		do
			Result := c_data1 (item)
		ensure
			result_correct: Result = c_data1 (item)
		end

	set_data1 (a_value: POINTER) 
			-- Change the value of member `data1` to `a_value`.
		require
			exists: exists
		do
			set_c_data1 (item, a_value)
		ensure
			data1_set: a_value = data1
		end

	data2: POINTER
			-- Access member `data2`
		require
			exists: exists
		do
			Result := c_data2 (item)
		ensure
			result_correct: Result = c_data2 (item)
		end

	set_data2 (a_value: POINTER) 
			-- Change the value of member `data2` to `a_value`.
		require
			exists: exists
		do
			set_c_data2 (item, a_value)
		ensure
			data2_set: a_value = data2
		end

feature {NONE} -- Implementation wrapper for struct struct SDL_UserEvent

	sizeof_external: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(struct SDL_UserEvent)"
		end

	c_type (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <SDL.h>"
		alias
			"[
				((struct SDL_UserEvent*)$an_item)->type
			]"
		end

	set_c_type (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <SDL.h>"
		alias
			"[
				((struct SDL_UserEvent*)$an_item)->type =  (Uint32)$a_value
			]"
		ensure
			type_set: a_value = c_type (an_item)
		end

	c_timestamp (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <SDL.h>"
		alias
			"[
				((struct SDL_UserEvent*)$an_item)->timestamp
			]"
		end

	set_c_timestamp (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <SDL.h>"
		alias
			"[
				((struct SDL_UserEvent*)$an_item)->timestamp =  (Uint32)$a_value
			]"
		ensure
			timestamp_set: a_value = c_timestamp (an_item)
		end

	c_windowid (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <SDL.h>"
		alias
			"[
				((struct SDL_UserEvent*)$an_item)->windowID
			]"
		end

	set_c_windowid (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <SDL.h>"
		alias
			"[
				((struct SDL_UserEvent*)$an_item)->windowID =  (Uint32)$a_value
			]"
		ensure
			windowid_set: a_value = c_windowid (an_item)
		end

	c_code (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <SDL.h>"
		alias
			"[
				((struct SDL_UserEvent*)$an_item)->code
			]"
		end

	set_c_code (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <SDL.h>"
		alias
			"[
				((struct SDL_UserEvent*)$an_item)->code =  (Sint32)$a_value
			]"
		ensure
			code_set: a_value = c_code (an_item)
		end

	c_data1 (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <SDL.h>"
		alias
			"[
				((struct SDL_UserEvent*)$an_item)->data1
			]"
		end

	set_c_data1 (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <SDL.h>"
		alias
			"[
				((struct SDL_UserEvent*)$an_item)->data1 =  (void*)$a_value
			]"
		ensure
			data1_set: a_value = c_data1 (an_item)
		end

	c_data2 (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <SDL.h>"
		alias
			"[
				((struct SDL_UserEvent*)$an_item)->data2
			]"
		end

	set_c_data2 (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <SDL.h>"
		alias
			"[
				((struct SDL_UserEvent*)$an_item)->data2 =  (void*)$a_value
			]"
		ensure
			data2_set: a_value = c_data2 (an_item)
		end

end
