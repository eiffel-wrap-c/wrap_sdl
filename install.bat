@echo on
title Script to automate WrapC development process.

echo Generate SDL library
cd %cd%/sdl 
call generator.bat

cd ..
echo Generate SDL image library
cd %cd%/sdl_image
call generator.bat
cd ..


