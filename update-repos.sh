#!/bin/bash

display_usage() {
    echo -e "\n Call update-repos.sh and give it a path to search recursively"
    echo -e "\n Examples:  ./update-repos ~/bin"
    echo -e "\n            ./update-repos /opt\n"
}

if [  -z "$1" ]
then
	display_usage
	exit 1
fi

if [[ ( $1 == "--help") ||  $1 == "-h" ]]
then
	display_usage
	exit 0
fi 

topdir=$1

for i in $(find $topdir -name ".git"); do
    echo "";
    echo "${i%????}";
    cd "${i%????}";
    git checkout main
    git up
done

