@echo on
title post_process script

rem copy c file is there any
rem copy .\manual_wrapper\c\src\*.c  .\generated_wrapper\c\src -- example

rem copy Makefile script
rem copy Makefile-win.SH  .\generated_wrapper\c\src -- example

cd generated_wrapper/c/include
mkdir win 
copy ewg_sdl2_callback_c_glue_code.h .\win
del /f ewg_sdl2_callback_c_glue_code.h
cd ..\src
mkdir win 
copy build.eant .\win
del /f build.eant
copy ewg_sdl2_callback_c_glue_code.c .\win
del /f ewg_sdl2_callback_c_glue_code.c
rem del /f Makefile-win.SH  
cd ..
cd ..
cd ..

copy Makefile-win.SH  .\generated_wrapper\c\src\win

cd generated_wrapper/eiffel/
del /f sdl_constant_api.e
del /f sdl_event_union_api.e

mkdir win 
copy ewg_sdl2_callback_c_glue_code_functions_api.e .\win
copy sdl_windows_message_hook_dispatcher.e .\win
del /f ewg_sdl2_callback_c_glue_code_functions_api.e 
del /f sdl_windows_message_hook_dispatcher.e

cd ..
cd ..


cd generated_wrapper/c/src/win
finish_freezing -library
