#!/bin/sh

even=$(expr $# % 2)
if [ $even -ne 0 ]; then
  echo amount of parameters is uneven >&2
fi
