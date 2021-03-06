# wrap_sdl
`wrap_sdl` is an Eiffel binding of [SDL API](https://www.libsdl.org/) 
using [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.

Simple DirectMedia Layer is a cross-platform development library designed to provide low level access to audio, keyboard, mouse, joystick, and graphics hardware via OpenGL and Direct3D. It is used by video playback software, emulators, and popular games including [Valve's](http://valvesoftware.com/) award winning catalog and many [Humble Bundle](https://www.humblebundle.com/) games. 


## Requirements 

*  [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.
*  [SDL API](https://www.libsdl.org/) 
*  [SDL Image API](https://www.libsdl.org/projects/SDL_image/) -- Extension 

## Download and  Install
Check the following link to learn more about SDL installation https://wiki.libsdl.org/Installation

### Linux

#### SDL
Download the [release-2.0.12](https://hg.libsdl.org/SDL/rev/355a4f94a782)  https://hg.libsdl.org/SDL
	
	tar -xvf SDL-355a4f94a782.tar.gz

	cd  SDL-355a4f94a782

	mkdir build
	cd build
	../configure
	make
	sudo make install

Rebuild the ldconfig cache using
 
 	sudo ldconfig 

#### SDL_image
Download the [release-2.0.12](https://hg.libsdl.org/SDL_image/archive/tip.tar.gz)  https://hg.libsdl.org/SDL_image/
	
	tar -xvf SDL_image-59a4c1ea96f3.tar.gz

	cd  SDL_image-59a4c1ea96f3

	mkdir build
	cd build
	../configure
	make
	sudo make install

Rebuild the ldconfig cache using
 
 	sudo ldconfig 

Optionally you can use [vckpg](https://github.com/Microsoft/vcpkg), a C++ Library Manager for Windows, Linux, and MacOS.

### Windows

Using vcpkg (https://github.com/microsoft/vcpkg) tool, you can install lib sdl2 library

	vcpkg install sdl2:x64-windows
	vcpkg install sdl2-image:x64-windows

On windows you will need to copy `SDL2.lib` to  `PROJECT_PATH\sdl\C\lib` and `SDL2_image.lib` to `PROJECT_PATH\sdl_image\C\lib`
Be sure to have the dll's on th PATH before to run the example.
At the moment there is no support for static linking with wrap_sdl project.

## Status

Work in progress

## Generate the SDL Eiffel wrapper code.
It's recommended to generate the code yourself instead of use the generated code. To do that just run the following script.
Before to run it, double check you have the required dependencies.

### Windows
	install.bat

### Linux
	./install.sh


This script will generate the wrapper and also will compile the C library glue code, required to execute the examples.


## Examples
The examples are based on the following SDL tutorial  http://lazyfoo.net/tutorials/SDL/index.php

* [Hello sdl](examples/01_hello_sdl)   												`Shows how to create a window`.
* [Getting an image on the screen](examples/02_getting_an_image_on_the_screen)   	`Shows how to gets an image on the screen`.
* [Event Driven Programming](examples/03_event_driven_programming)   				`Shows how to handling user input by allowing the user to X out the window`.
* [Key presses](examples/04_key_presses)   											`Shows different images appear depending on which key you press`.
* [Optimized Surface Loading and Soft Stretching](examples/05_optimized_surface_loading_and_soft_stretching)   		`Shows Optimized Surface Loading and Soft Stretching`.
* [Extension loading PNG's images](examples/06_extension_libraries_and_loading_other_image_formats)   		`Shows how to load PNGs images with SDL_image`.
* [Texture Loading and Rendering](examples/07_texture_loading_and_rendering)   		`Shows how to texture loading and rendering`.
* [Geometry Rendering](examples/08_geometry_rendering)   		`Shows SDL2 new feature, hardware accelerated primitive rendering`.
* [Viewport](examples/09_viewport)   		`SDL 2.0 also lets you control where you render on the screen using the viewport`.
* [Color Keying](examples/10_color_keying)   		`Shows how to use color keying to give textures transparent backgrounds.`.


### How to compile the C library glue code.

Before to use the examples you will need to compile the C glue code, go to 

	sld/generated_wrapper/c/src

	and

	sld_image/generated_wrapper/c/src

and run

	finish_freezing --library

It will copy the C lib `eif_sdl.a` to `$ECF_CONFIG_PATH/C/spec/$(ISE_PLATFORM)/lib/`  or `eif_sdl.lib`  to `$ECF_CONFIG_PATH/C/spec/$ISE_C_COMPILER/$ISE_PLATFORM/lib` 



