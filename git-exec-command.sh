#!/usr/bin/env sh
# git-exec-command.sh
# Last Updated: 2022-08-31
# Author: Takashi Idobe <mail@takashiidobe.com>
# Explanation: Exec a command while rebasing

COMMAND_TO_EXECUTE="ls"

git rebase HEAD~3 --exec "$COMMAND_TO_EXECUTE"
