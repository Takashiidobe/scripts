#!/usr/bin/env sh
# git-grep-history.sh
# Last Updated: 2022-08-31
# Author: Takashi Idobe <mail@takashiidobe.com>
# Explanation: Search commit content with <regexp>

regexp=$1

git grep $regexp $(git rev-list --all)
