#!/bin/bash

str=$1
strlen=${#str}

echo $str is $strlen long

for i in $(seq $strlen); 
do 
	echo ${str:$i:$i+1} ;
	echo $i
done

for i in {226..231}; 
	do echo "$(tput setab $i)--- hello! ---$(tput sgr0)" ; 
done
