#!/usr/bin/env sh
# cd.sh
# Last Updated: 2022-08-31
# Author: Takashi Idobe <mail@takashiidobe.com>
# Explanation: combines cd and ls

cd() {
  builtin cd "$@" || return $?
  ls
}
