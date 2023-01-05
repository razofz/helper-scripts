#!/bin/bash
# author: Rasmus Olofzon, 2023-01-04
# https://github.com/razofz/helper-scripts 

pandoc $1 | lynx -stdin
