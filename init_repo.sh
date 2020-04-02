#!/usr/bin/bash

USAGE() {
	echo "init_repo.sh [REPO] [COMMIT MESSAGE]"
	echo ${#}

}

REPO="$1"
MSG="$2"
DIR=`pwd`
echo ${REPO}
echo ${MESSAGE}
echo ${DIR}



if (( $# == 2 ))
then
	git init 
	git add .
	git commit -m "${MSG}"
	git remote add origin "${REPO}"
	git push -u origin master
fi
