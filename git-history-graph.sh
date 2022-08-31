#!/usr/bin/env sh
# git-history-graph.sh
# Last Updated: 2022-08-31
# Author: Takashi Idobe <mail@takashiidobe.com>
# Explanation: Shows git history as a graph

git log --graph --oneline --decorate --all --full-history --author-date-order --no-notes
