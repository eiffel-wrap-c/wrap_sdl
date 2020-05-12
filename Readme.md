# wrap_sdl
`wrap_sdl` is an Eiffel binding of [SDL API](https://www.libsdl.org/) 
using [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.

Simple DirectMedia Layer is a cross-platform development library designed to provide low level access to audio, keyboard, mouse, joystick, and graphics hardware via OpenGL and Direct3D. It is used by video playback software, emulators, and popular games including [Valve's](http://valvesoftware.com/) award winning catalog and many [Humble Bundle](https://www.humblebundle.com/) games. 


## Requirements 

*  [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.
*   [SDL API](https://www.libsdl.org/) 


## Download and  Install
Check the following link to learn more about SDL installation https://wiki.libsdl.org/Installation

### Linux

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
 
Optionally you can use [vckpg](https://github.com/Microsoft/vcpkg), a C++ Library Manager for Windows, Linux, and MacOS.

### Windows

Using vcpkg (https://github.com/microsoft/vcpkg) tool, you can install lib sdl2 library

	vcpkg install sdl2:x64-windows

## Status

Work in progress


## Examples
The examples are based on the following SDL tutorial  http://lazyfoo.net/tutorials/SDL/index.php

* [Hello sdl](examples/01_hello_sdl)   												`Shows how to create a window`.
* [Getting an image on the screen](examples/02_getting_an_image_on_the_screen)   	`Shows how to gets an image on the screen`.
* [Event Driven Programming](examples/03_event_driven_programming)   				`Shows how to handling user input by allowing the user to X out the window`.
* [Key presses](examples/04_key_presses)   											`Shows different images appear depending on which key you press`.
