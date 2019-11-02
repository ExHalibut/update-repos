#!/bin/bash

display_usage() {
    echo -e "\n Example Usage: ./update-repos ~/"
    echo -e "\n                ./update-repos ~/bin"
    echo -e "\n                ./update-repos /opt\n"
}

topdir=$1

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

for i in $(find $topdir -name ".git"); do
    echo "";
    echo "${i%????}";
    cd "${i%????}";
    git checkout master
    git up
done

