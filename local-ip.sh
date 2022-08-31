#!/usr/bin/env sh
# local-ip.sh
# Last Updated: 2022-08-31
# Author: Takashi Idobe <mail@takashiidobe.com>
# Explanation: Get the computer's local ip address and print to stdout

ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'
