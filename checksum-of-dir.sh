#!/bin/bash
# author: Rasmus Olofzon, 2022-09-05
# https://github.com/razofz/helper-scripts 

if [[ -z "$1" ]]; then
	find . -type f -exec md5sum {} + | LC_ALL=C sort | md5sum
else
	find $1 -type f -exec md5sum {} + | LC_ALL=C sort | md5sum
fi

