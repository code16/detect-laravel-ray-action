#!/usr/bin/env sh

RESULTS=`grep -r --include "*.php" "\W@\?ray(" ./app ./resources/views ./database ./routes ./tests`
LINE_COUNT=`echo $RESULTS | xargs | wc -l`

if [ $LINE_COUNT -gt 0 ]; then
  echo "found some ray() calls..."
  echo $RESULTS
  exit 1
else
  echo "no ray() calls found !"
fi
