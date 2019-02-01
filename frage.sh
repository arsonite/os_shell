#!/bin/sh

if [ $# -eq 3 ]; then
  while :
  do
    echo "$1 ($2/$3)" ; read a
    case $a in
      $2) exit 0;;
      $3) exit 1;;
      *)
      echo "Please respond either with \"$2\" or \"$3\". So, again:";
      continue;;
    esac
  done
else
  echo "Please submit exactly 3 parameters (1. A question, 2: \"Yes\", 3: \"No\"))"
fi
