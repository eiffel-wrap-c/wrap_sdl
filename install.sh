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


