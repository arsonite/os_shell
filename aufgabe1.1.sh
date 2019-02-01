#!/bin/sh

last=$(expr $# - 1)
if [ $# -ge 2 ]; then
  i=1
  for x in $@
  do
    if [ $i -ge $last ]; then
      echo $x
    fi
    i=$(expr $i + 1)
  done
fi
