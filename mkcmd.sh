#!/bin/bash
# author: Rasmus Olofzon, 2020-02-27
# https://github.com/razofz/helper-scripts 

chmod +x $1

ln -s $(pwd)/${1} ~/bin/$(basename $1 .sh)
