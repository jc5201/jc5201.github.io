#!/bin/bash

export FILTER_BRANCH_SQUELCH_WARNING=1

git branch -D pages
git checkout -b pages
git filter-branch --subdirectory-filter _site/ -f
git reflog expire --expire=now --all
git gc --prune=now
git checkout master
git push --all -f origin 