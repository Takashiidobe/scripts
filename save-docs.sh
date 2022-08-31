#!/usr/bin/env sh
# save-docs.sh
# Last Updated: 2022-08-31
# Author: Takashi Idobe <mail@takashiidobe.com>
# Explanation: Saves online documentation locally

remote_file_path=$1

wget --recursive --level=5 --convert-links --page-requisites --wait=1 --random-wait --timestamping --no-parent ${remote_file_path}
