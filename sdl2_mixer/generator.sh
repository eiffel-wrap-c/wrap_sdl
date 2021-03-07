#!/bin/sh
#Script to automate WrapC development process.



#wrap_c --verbose  --script_pre_process=pre_script.sh --script_post_process=post_script.sh  --output-dir=./generated_wrapper --full-header=C:\home\tools\vcpkg\installed\x64-windows\include\SDL2\SDL_image.h --config=config.xml

wrap_c --verbose  --c_compile_options="-D _Float128=double" --script_pre_process=pre_script.sh --script_post_process=post_script.sh  --output-dir=./generated_wrapper --full-header=/usr/include/SDL2/SDL_mixer.h --config=config.xml

