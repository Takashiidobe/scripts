#!/usr/bin/env sh
# find-occurrences.sh
# Last Updated: 2022-09-02
# Author: Takashi Idobe <mail@takashiidobe.com>
# Explanation: Finds occurrences of the same string and prints them in descending order

# 3 means the 3rd column
cat example.csv | cut -d -f 3 | sort | uniq -c | sort -rn
