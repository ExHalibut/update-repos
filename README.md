# Update-Repos

A bash script to recursively find and update all Git repositories within a given directory

## Requirements

  * Git Up alias: `git config --global alias.up '!git remote update -p; git merge --ff-only @{u}'`

## Usage

Call update-repos.sh and give it a path to search recursively

  * `./update-repos.sh /opt`
  * `./update-repos.sh ~/`

## Current Features

  * Search recursively through a given path to find .git directories
  * Change into those directories
  * Run `git up` for each repository

## Planned Features

  * List-only: A switch such as `ls` or `--only-folders` to recursively list all git repositories in a given directory, but not to perform `git up` for each

