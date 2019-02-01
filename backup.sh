#!/bin/sh

mkdir -p -v backup-files

for x in *.$1; do
  sh frage.sh $x y n
  if [ $? -eq 0 ]; then
    cp -v $x ./backup-files/
  fi
done
