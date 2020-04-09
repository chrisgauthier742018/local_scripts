#!/usr/bin/bash

while [[ $user != "quit" ]]
do
	read -p "Enter a username, or quit to exit: " user
	grep $user /etc/passwd 
	if [[ $? -eq 0 ]]
	then
		echo "user ${user} exists"
		
	elif [[ $user == "quit" ]]
	then
		exit
	else 
		echo "adding user: ${user}"
		adduser $user
	fi
done
