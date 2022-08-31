#!/usr/bin/env sh
# open-git-branch.sh
# Last Updated: 2022-08-31
# Author: Takashi Idobe <mail@takashiidobe.com>
# Explanation: Opens current git branch in browser

  x=$(git config --local remote.origin.url)
  y=$(git symbolic-ref --short HEAD)
  url="$x/tree/$y"
  $(open -a "firefox" "$url")
