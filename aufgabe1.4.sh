#!/bin/sh

for x in $(ls)
do
  i=$(echo -n $x| wc -c) #anzahl - 1 (zeilenumbruch)
  if [ $i -ge 3 ] && [ $i -lt 6 ]; then
    echo $x
  fi
done
