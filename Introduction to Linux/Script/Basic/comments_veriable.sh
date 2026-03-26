 #!/bin/bash
 # This scipt Shows Name and Age of the student
 echo -e "Enter The First name of the student  : \c"
 read fname
 echo -e "Enter the Last Name of the student  : \c"
 read lname
 echo -e "Enter the Age of the student  : \c"
 read age
 
  echo "Name of the Student is:  $fname $lname"
  echo "Age of the student is : ${age}y"
  echo "The file Save in the directory: $PWD"

