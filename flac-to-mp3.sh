#!/usr/bin/env sh
# flac-to-mp3.sh
# Last Updated: 2022-08-31
# Author: Takashi Idobe <mail@takashiidobe.com>
# Explanation: Converts a flac file to 320k mp3

ffmpeg -i $INPUT_FLAC -ab 320k -map_metadata 0 -id3v2_version 3 $OUTPUT_MP3
