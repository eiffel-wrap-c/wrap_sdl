note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class SDL_SYS_WMEVENT_STRUCT_API

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

	msg: detachable SDL_SYS_WMMSG_STRUCT_API 
			-- Access member `msg`
		require
			exists: exists
		do
			if attached c_msg (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_msg (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_msg (item) 
		end

	set_msg (a_value: SDL_SYS_WMMSG_STRUCT_API) 
			-- Set member `msg`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_msg (item, a_value.item)
		ensure
			msg_set: attached msg as l_value implies l_value.item = a_value.item
		end

feature {NONE} -- Implementation wrapper for struct struct SDL_SysWMEvent

	sizeof_external: INTEGER 
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(struct SDL_SysWMEvent)"
		end

	c_type (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <SDL.h>"
		alias
			"[
				((struct SDL_SysWMEvent*)$an_item)->type
			]"
		end

	set_c_type (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <SDL.h>"
		alias
			"[
				((struct SDL_SysWMEvent*)$an_item)->type =  (Uint32)$a_value
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
				((struct SDL_SysWMEvent*)$an_item)->timestamp
			]"
		end

	set_c_timestamp (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <SDL.h>"
		alias
			"[
				((struct SDL_SysWMEvent*)$an_item)->timestamp =  (Uint32)$a_value
			]"
		ensure
			timestamp_set: a_value = c_timestamp (an_item)
		end

	c_msg (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <SDL.h>"
		alias
			"[
				((struct SDL_SysWMEvent*)$an_item)->msg
			]"
		end

	set_c_msg (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <SDL.h>"
		alias
			"[
				((struct SDL_SysWMEvent*)$an_item)->msg =  (SDL_SysWMmsg*)$a_value
			]"
		ensure
			msg_set: a_value = c_msg (an_item)
		end

end
