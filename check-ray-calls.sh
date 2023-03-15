#!/usr/bin/env bash

RESULTS=`grep -r --include "*.php" "\W@\?ray(" ./app ./resources/views ./database ./routes ./tests`

if [ ! -z $RESULTS ]; then
  echo "found some ray() calls..."
  echo $RESULTS
  exit 1
else
  echo "no ray() calls found !"
fi
