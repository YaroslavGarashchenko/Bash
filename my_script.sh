#!/bin/bash
#Task #2 for topic of if statement
#takes any number of arguments
#if there are less than 2 arguments, output the values of these arguments
#if there are more than 2 but less than 4 arguments, output only the last argument
#else output "Invalid number of arguments" message
if (( $# < 2 )); then
   echo $*
elif (( $# > 2 && $# < 4 )); then
   #echo $3 # - first variant
   for i in $*; do
       last=$i
   done
   echo $last
else
   echo "Invalid number of arguments"
fi
