#!/bin/bash

display_usage() {
    echo -e "\n Call update-repos.sh and give it a path to search recursively"
    echo -e "\n Examples:  ./update-repos ~/"
    echo -e "\n            ./update-repos ~/bin"
    echo -e "\n            ./update-repos /opt\n"
}

if [  $# -le 1 ]
then
	display_usage
	exit 1
fi

if [[ ( $# == "--help") ||  $# == "-h" ]]
then
	display_usage
	exit 0
fi 

topdir=$1

for i in $(find $topdir -name ".git"); do
    echo "";
    echo "${i%????}";
    cd "${i%????}";
    git checkout master
    git up
done

