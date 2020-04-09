#!/usr/bin/bash


cat syslog | while read line
do
	echo ${line} | grep -i "database"
	if [[ $? -eq 0 ]]
	then
		echo $line
	fi
done
