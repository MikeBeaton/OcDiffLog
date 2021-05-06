#!/bin/bash
if [ "$1" == "" ]; then
  echo "Usage: $(basename $0) <oclogfile>"
  echo
  exit -1
fi

if [ ! -f $1 ]; then
  echo "Cannot find file: $1"
  exit -1
fi

cat $1 | sed -r 's/[0-9][0-9]:[0-9][0-9][0-9] [0-9][0-9]:[0-9][0-9][0-9] //'
