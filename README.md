# Update-Repos

A bash script to recursively find and update all Git repositories within a given directory

## Features

  * Search recursively through a given path to find .git directories
  * Change into those directories
  * Run `git up` for each repository

## Requirements

Git Up alias: `git config --global alias.up '!git remote update -p; git merge --ff-only @{u}'`

## Usage Examples

Call update-repos.sh and give it a path to search recursively

  * `./update-repos.sh ~/bin`
  * './update-repos.sh /opt'
