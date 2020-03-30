#!/usr/bin/bash

USAGE() {
	echo "We need 2 arguments a commit message and a repo name"
	echo ${#}

}

REPO=$1
MSG=$2

if [[ ${#} -eq 2 ]]
then

	echo "initializing our local git repo ${REPO}"
	echo "My new repo ${REPO}"
	git init
	git add *
	git commit -m "${MSG}"
	git remote add origin "${REPO}"
	git push -u origin master

else 
	USAGE
fi
