#!/bin/sh
# Post processing script

# copy c file is there any
# cp ./manual_wrapper/c/src/*.c  ./generated_wrapper/c/src           --example
# cp ./manual_wrapper/c/include/*.h  ./generated_wrapper/c/include		


#copy Makefile
#cp Makefile.SH  ./generated_wrapper/c/src                          --example

cd  ./generated_wrapper/eiffel/

rm sdl_pixel_format_struct_api.e
rm sdl_color_struct_api.e
rm sdl_rwops_struct_api.e
rm sdl_surface_struct_api.e
rm sdl_rect_struct_api.e
rm sdl_renderer_struct_api.e
rm sdl_texture_struct_api.e

cd ..
cd ..

cd generated_wrapper/c/src/
finish_freezing -library
