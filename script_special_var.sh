#!/bin/bash
#Tasks for topic of special variables
#Name of file-script
echo "Executable file: " $0

#prints all arguments
echo "Prints all arguments:" $@

#number of arguments passed to the script
echo "Number of arguments:" $#
#prints 2nd and 4th argument
echo "2nd argument: $2"
echo "4th argument: $4"
#print the exit code of -eq operation on 1st and 2nd arguments
var1=$1
var2=$2
[[ ${var1} -eq ${var2} ]]
echo $?
