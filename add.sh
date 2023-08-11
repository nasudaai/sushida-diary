#!/bin/bash

echo $1 >> $2 

cat -n $2 | sort -rn -k 2 | head -n 5

point=$1
border=3000

filename=$2

case "$filename " in
  3*)
    border=3000
    ;;
  5*)
    border=5000
    ;;
  10:) 
    border=10000
    ;;
esac

echo "You played $border yen course."
echo "now: $point yen"

if [ "$point" -gt "$border" ]; then
  echo "OK!"
else
  echo "NO!"
fi

echo "Today is $(date '+%Y-%m-%d')"
