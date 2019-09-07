#!/bin/bash
# Update specific known GitHub repositories
# Requires git up: git config --global alias.up '!git remote update -p; git merge --ff-only @{u}'

while read repo; do
	(cd "${repo}" && git checkout master && git up)
done <repolist

