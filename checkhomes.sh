#!/usr/bin/bash


homedirs=$(cat /etc/passwd | awk -F: '{print $6}')


for i in ${homedirs}
do
	if [[ ! -d $i ]]
	then
		echo "${i} does not exist"
	fi	
done
