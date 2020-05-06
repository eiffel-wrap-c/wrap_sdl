#include <ewg_eiffel.h>
#include <ewg_sdl2_callback_c_glue_code.h>

#ifdef _MSC_VER
#pragma warning (disable:4715) // Not all control paths return a value
#endif
void* sdl_windows_message_hook_object =  NULL;
sdl_windows_message_hook_eiffel_feature sdl_windows_message_hook_address_1 = NULL;
sdl_windows_message_hook_eiffel_feature sdl_windows_message_hook_address_2 = NULL;
sdl_windows_message_hook_eiffel_feature sdl_windows_message_hook_address_3 = NULL;

void set_sdl_windows_message_hook_object (void* a_object)
{
	if (a_object) {
		sdl_windows_message_hook_object = eif_protect(a_object);
	} else { 
		sdl_windows_message_hook_object = NULL;
	}
}

void release_sdl_windows_message_hook_object ()
{
	eif_wean (sdl_windows_message_hook_object);
}

void sdl_windows_message_hook_stub_1 (void *userdata, void *hwnd, unsigned int message, Uint64 wparam, Sint64 lparam)
{
	if (sdl_windows_message_hook_object != NULL && sdl_windows_message_hook_address_1 != NULL)
	{
		sdl_windows_message_hook_address_1 (eif_access(sdl_windows_message_hook_object), userdata, hwnd, message, wparam, lparam);
	}
}

void sdl_windows_message_hook_stub_2 (void *userdata, void *hwnd, unsigned int message, Uint64 wparam, Sint64 lparam)
{
	if (sdl_windows_message_hook_object != NULL && sdl_windows_message_hook_address_2 != NULL)
	{
		sdl_windows_message_hook_address_2 (eif_access(sdl_windows_message_hook_object), userdata, hwnd, message, wparam, lparam);
	}
}

void sdl_windows_message_hook_stub_3 (void *userdata, void *hwnd, unsigned int message, Uint64 wparam, Sint64 lparam)
{
	if (sdl_windows_message_hook_object != NULL && sdl_windows_message_hook_address_3 != NULL)
	{
		sdl_windows_message_hook_address_3 (eif_access(sdl_windows_message_hook_object), userdata, hwnd, message, wparam, lparam);
	}
}

void set_sdl_windows_message_hook_entry_1 (void* a_feature){
	sdl_windows_message_hook_address_1 = (sdl_windows_message_hook_eiffel_feature) a_feature;
}

void set_sdl_windows_message_hook_entry_2 (void* a_feature){
	sdl_windows_message_hook_address_2 = (sdl_windows_message_hook_eiffel_feature) a_feature;
}

void set_sdl_windows_message_hook_entry_3 (void* a_feature){
	sdl_windows_message_hook_address_3 = (sdl_windows_message_hook_eiffel_feature) a_feature;
}

void* get_sdl_windows_message_hook_stub_1 (){
	return (void*) sdl_windows_message_hook_stub_1;
}

void* get_sdl_windows_message_hook_stub_2 (){
	return (void*) sdl_windows_message_hook_stub_2;
}

void* get_sdl_windows_message_hook_stub_3 (){
	return (void*) sdl_windows_message_hook_stub_3;
}

void call_sdl_windows_message_hook (void *a_function, void *userdata, void *hwnd, unsigned int message, Uint64 wparam, Sint64 lparam)
{
	((void (*) (void *userdata, void *hwnd, unsigned int message, Uint64 wparam, Sint64 lparam))a_function) (userdata, hwnd, message, wparam, lparam);
}

