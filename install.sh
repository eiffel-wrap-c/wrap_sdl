#!/bin/sh
#Script to automate WrapC install process.

echo Generate SDL library
cd sdl
./generator.sh
cd ..

echo Generate SDL image library
cd sdl_image
./generator.sh
cd ..

echo Generate SDL mixer library
cd sdl2_mixer
./generator.sh
cd ..
