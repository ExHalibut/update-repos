#!/bin/bash
# Update all git repositories beneath a given directory
# Example: update-repos /opt
# Example: update-repos ~/

topdir=$1

for i in $(find $topdir -name .git -exec dirname {} \; -prune); do
    echo "";
    echo "$i";
    git checkout master
    git up
done

