!/bin/bash
#Task for topic of if statement
#if the number of letters in the argument is odd, outputs the message "Odd", else if the number of letters is even - outputs "Even"
if (( $1 % 2 == 0 )); then
   echo "Even"
else
   echo "Odd"
fi
