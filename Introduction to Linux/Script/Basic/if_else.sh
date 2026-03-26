#!/bin/bash
echo "Write a Program if number is greater then program then Show Big number then it will say small number"
echo -e "Enter The Number: \c"
read num
 if [ $num -gt 10 ]
 then
  echo "${num} is  Greater Number"
else
  echo "${num} is Smaller Number"
 fi

