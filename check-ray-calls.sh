#!/usr/bin/env bash

RESULTS=`grep -r -n --include "*.php" "\W@\?ray(" ./app ./resources/views ./database ./routes ./tests`

if [[ ! -z "$RESULTS" ]]; then
  while read -r line; do
    FILE_PATH=`echo $line | sed -E 's/^(.*):([0-9]+): ray\((.*)\);$/\1/'`
    LINE_NUMBER=`echo $line | sed -E 's/^(.*):([0-9]+): ray\((.*)\);$/\2/'`
    RAY_CONTENT=`echo $line | sed -E 's/^(.*):([0-9]+): ray\((.*)\);$/\3/'`
    MESSAGE="Found ray($RAY_CONTENT) in $FILE_PATH on line $LINE_NUMBER"

    echo "::error file=$FILE_PATH,line=$LINE_NUMBER::$MESSAGE";

  done <<< "$RESULTS"
  exit 1
fi