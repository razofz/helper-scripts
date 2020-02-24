#!/bin/bash

chmod +x $1

ln -s $(pwd)/${1} ~/bin/$(basename $1 .sh)
