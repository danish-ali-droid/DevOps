#!/bin/bash
echo " write a program if the file exist or not "
echo -e "Enter the Filename or Path:  \c"
read filename
if [ -e "$filename" ]
then 
if [ -e "$filenames[0]" ]
else
echo "$filename is not exist"
fi

