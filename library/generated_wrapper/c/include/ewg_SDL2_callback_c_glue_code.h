#ifndef EWG_CALLBACK_SDL2___
#define EWG_CALLBACK_SDL2___

#include <SDL.h>

typedef void (*sdl_windows_message_hook_eiffel_feature) (void *a_class, void *userdata, void *hwnd, unsigned int message, Uint64 wparam, Sint64 lparam);

void* sdl_windows_message_hook_object;
sdl_windows_message_hook_eiffel_feature sdl_windows_message_hook_address_1;
sdl_windows_message_hook_eiffel_feature sdl_windows_message_hook_address_2;
sdl_windows_message_hook_eiffel_feature sdl_windows_message_hook_address_3;

void set_sdl_windows_message_hook_object (void* a_class);

void release_sdl_windows_message_hook_object (void);

void* get_sdl_windows_message_hook_stub_1 ();
void* get_sdl_windows_message_hook_stub_2 ();
void* get_sdl_windows_message_hook_stub_3 ();

void set_sdl_windows_message_hook_entry_1 (void* a_feature);
void set_sdl_windows_message_hook_entry_2 (void* a_feature);
void set_sdl_windows_message_hook_entry_3 (void* a_feature);

void call_sdl_windows_message_hook (void *a_function, void *userdata, void *hwnd, unsigned int message, Uint64 wparam, Sint64 lparam);


#endif
