#!/usr/bin/env sh
# git-fixup.sh
# Last Updated: 2022-08-31
# Author: Takashi Idobe <mail@takashiidobe.com>
# Explanation: Add changes to a commit and its children

fixup_commit="HEAD~1"
squash_commit="HEAD~3"

git add .
git commit --fixup $commit
git rebase -i $squash_commit --autosquash
