# Update-Repos

A quick, dirty bash script to update all repos

## Requirements

  * Git Up alias: `git config --global alias.up '!git remote update -p; git merge --ff-only @{u}'`

## Usage

Call update-repos.sh and give it a path to search recursively

  * `./update-repos.sh /opt`
  * `./update-repos.sh ~/`

## Current Features

  * Search recursively through a given path to find .git directories
  * cd into
  * git up

## Planned Features

  * ls --only-folders

