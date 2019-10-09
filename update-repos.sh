#!/bin/bash

topdir=$1

for i in $(find $topdir -name ".git"); do
    echo "";
    echo "${i%????}";
    cd "${i%????}";
    git checkout master
    git up
done

