#!/bin/bash
# Update specific known GitHub repositories
# Requires git up: git config --global alias.up '!git remote update -p; git merge --ff-only @{u}'
# Set repo list with: export REPOLIST="/path/to/repolist"

while read repo; do
	echo "" && echo "Checking ${repo}" 
	(cd "${repo}" && git checkout master && git up)
done <$REPOLIST

