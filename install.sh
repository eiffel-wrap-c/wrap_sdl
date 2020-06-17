#!/bin/sh
#Script to automate WrapC install process.

echo Generate SDL library
./sdl/generator.sh

echo Generate SDL image library
./sdl_image/generator.sh



