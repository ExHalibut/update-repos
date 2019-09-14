#!/bin/bash
# Update all git repositories beneath a given directory
# Requires Git Up alias: git config --global alias.up '!git remote update -p; git merge --ff-only @{u}'
# Usage Examples: 
#    ./update-repos.sh /opt
#    ./update-repos.sh ~/

topdir=$1

for i in $(find $topdir -name ".git"); do
    echo "";
    echo "${i%????}";
    cd "${i%????}";
    git checkout master
    git up
done

