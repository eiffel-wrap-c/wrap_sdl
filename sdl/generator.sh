#!/bin/sh
#Script to automate WrapC development process.


#Compiling with -D _Float128=double to avoid the issue with extern int __fpclassifyf128 (_Float128 __value)
#--c_compile_options=-D _Float128=double

wrap_c --verbose  --c_compile_options="-D _Float128=double" --script_pre_process=pre_script.sh --script_post_process=post_script.sh  --output-dir=./generated_wrapper --full-header=/usr/include/SDL2/SDL.h --config=config.xml

