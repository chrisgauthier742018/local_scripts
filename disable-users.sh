#!/usr/bin/bash



users=$(lastlog | tail -2 | grep ${1} | awk '{print $1}')

for i in ${users}
do
	echo "Disabling ${i}" 
	usermod -L $i
done
