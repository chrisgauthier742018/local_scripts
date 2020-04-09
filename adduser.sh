#!/usr/bin/bash

while [[ $user != "none" ]]
do
	read -p "Enter a username, or none to exit: " user
	grep $user /etc/passwd
	if [[ $? == 0 ]]
	then
		echo "${user} exists"
	else
		echo "Adding user"
		adduser $user
	fi
done
