#!/bin/sh

i=$#
while [ $i -gt 0 ]
do
	c=1
	for x in $@
  do
		if [ $c -eq $i ]; then
			echo the parameter on $i. place is: $x
		fi
		c=$(expr $c + 1)
	done
	i=$(expr $i - 1)
done
