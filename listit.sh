#!/bin/bash


num="$1"
#Create a file

touch directories.list
echo "line one's line" > directories.list
head 3 directories.list 

for t in $num 
do 
	head 3 directories.list
	t=$t+1
done


