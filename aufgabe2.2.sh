#!/bin/sh

while :
do
  case $t in
      echo "Please enter a valid file extension:"; read a
      echo "Creating backup..."
      mkdir -p backup-files
      if ls *.$a; then
        for x in *.$a; do
          cp *.$a ./backup-files/
        done
      else
        continue;
      fi
      break;;
    [Nn]) echo "Ok, creating no backup. Bye!"; break;;
    *) echo "Not a valid response."; break;;
   esac
done
