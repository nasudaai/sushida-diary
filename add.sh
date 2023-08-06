#!/bin/bash

echo $1 >> $2 

cat -n $2 | sort -rn -k 2 
