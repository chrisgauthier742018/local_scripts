#!/usr/bin/bash

log() {
	local MESSAGE="${@}"
	logger ${MESSAGE} 

}


read -p "Enter a log message to syslog: " MESSAGE


log ${MESSAGE}

if [[ $? -eq 0 ]]
then
	echo "Logged Successfully"	

else 
	echo "Something broke"
fi
