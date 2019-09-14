#!/bin/bash
# Update all git repositories beneath a given directory
# Example: update-repos /opt
# Example: update-repos ~/

topdir=$1

for i in $(find ~/ -name ".git"); do
    echo "";
    echo "${i%????}";
    cd "${i%????}";
    git checkout master
    git up
done

