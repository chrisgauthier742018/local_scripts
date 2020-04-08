#!/usr/bin/bash



for i in $(ls test*)
do
	mv ${i} $(echo $i | sed 's/test/newfile/g')
done
