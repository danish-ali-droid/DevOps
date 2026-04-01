#!/bin/bash
echo "The Script Shows  Data In Array"
echo -e  "Enter The Name Of The Students: \c"
read -a students
echo -e  " The Name of the Students is:\n ${students[@]}"
