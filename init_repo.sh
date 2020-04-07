#!/usr/bin/bash

USAGE() {
	echo "init_repo.sh [REPO] [COMMIT MESSAGE]"

}

REPO="$1"
MSG="$2"
echo ${REPO}
echo ${MESSAGE}



if (( $# == 2 ))
then
	git init 
	echo "New Repository" >> README.MD
	git add .
	git commit -m "${MSG}"
	git remote add origin "${REPO}"
	git push -u origin master
else
	USAGE
fi
