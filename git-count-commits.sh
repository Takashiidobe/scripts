#!/usr/bin/env sh
# git-count-commits.sh
# Last Updated: 2022-08-31
# Author: Takashi Idobe <mail@takashiidobe.com>
# Explanation: Count commits in git on branch

branch="master"

git rev-list --count $branch
