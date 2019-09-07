# Update-Repos

A quick, dirty bash script to update all repos

## Requirements

  * Git Up alias: `git config --global alias.up '!git remote update -p; git merge --ff-only @{u}'`
  * repolist; a file containing a list of repositories with absolute paths and no empty line break at the end

## Current Features

  * Loop through paths in repolist file
  * cd into
  * git up

## Planned Features

  * ls --only-folders
  * Pipe to if has a .git dir
  * Possibly a check to clone if dir doesn't exist
  * Git pull

