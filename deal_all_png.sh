#!/bin/bash

echo "deal all png in this directory"

files=`ls`

for file in $files

do

	if [ -f "$file" ]; then
		extension="${file##*.}"
		res="${file%.*}"
		if [ $extension == 'png' ];then
			echo "should do $res"
			tesseract -l asy --psm 7 $file $res
		fi
	fi
done

