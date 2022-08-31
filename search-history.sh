#!/usr/bin/env sh
# search-history.sh
# Last Updated: 2022-08-31
# Author: Takashi Idobe <mail@takashiidobe.com>
# Explanation: Search commit content with for <regexp>

git grep <regexp> $(git rev-list --all)
