#!/bin/bash
if [ "$1" == "" ] || [ "$2" == "" ]; then
  echo "Usage: $(basename $0) <oclogfile1> <oclogfile2>"
  echo
  exit -1
fi

if [ ! -f $1 ]; then
  echo "Cannot find file: $1"
  exit -1
fi

if [ ! -f $2 ]; then
  echo "Cannot find file: $2"
  exit -1
fi

occleanlog $1 | diff --text - <(occleanlog $2)
