#!/usr/bin/env sh
# git-log-filter.sh
# Last Updated: 2022-08-31
# Author: Takashi Idobe <mail@takashiidobe.com>
# Explanation: Filter git log

git log --after="$after" --before="$before" --author="$author" --grep="$commit_message"
