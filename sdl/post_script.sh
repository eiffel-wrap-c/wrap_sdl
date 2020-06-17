#!/bin/sh
# Post processing script

# copy c file is there any
# cp ./manual_wrapper/c/src/*.c  ./generated_wrapper/c/src           --example
# cp ./manual_wrapper/c/include/*.h  ./generated_wrapper/c/include		


#copy Makefile
#cp Makefile.SH  ./generated_wrapper/c/src                          --example
cd generated_wrapper/c/include
mkdir linux 
cp ewg_sdl2_callback_c_glue_code.h ./linux
rm ewg_sdl2_callback_c_glue_code.h
cd ..
cd src

mkdir linux 
cp build.eant ./linux
rm build.eant
cp ewg_sdl2_callback_c_glue_code.c ./linux
rm ewg_sdl2_callback_c_glue_code.c
rm Makefile.SH  

cd ..
cd ..
cd ..
cp Makefile.SH  ./generated_wrapper/c/src/linux

cd generated_wrapper/eiffel/
rm  sdl_constant_api.e
rm  sdl_event_union_api.e

mkdir linux
FILE=ewg_sdl2_callback_c_glue_code_functions_api.e
if test -f "$FILE"; then
    cp ewg_sdl2_callback_c_glue_code_functions_api.e ./linux
    rm ewg_sdl2_callback_c_glue_code_functions_api.e 
fi
cp sdl_error_functions_api.e ./linux
cp sdl_window_flags_enum_api.e ./linux

rm sdl_error_functions_api.e
rm sdl_window_flags_enum_api.e

cd ..
cd ..






cd generated_wrapper/c/src/linux
finish_freezing -library
