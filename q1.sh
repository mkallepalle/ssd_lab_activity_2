#!/bin/bash
m=$(cat $1 | wc -l)
n=$((m%2))
m=$((m/2))
if (( n==0 ))
then
	awk "NR==$m" $1
else
	awk "NR==$((m+1))" $1
fi
