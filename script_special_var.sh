#!/bin/bash
#Tasks for topic of special variables
#Nane of file-script
echo "file: " $0

#prints all arguments
echo "prints all arguments:" $@

#number of arguments passed to the script
echo "number of arguments:" $#
#prints 2nd and 4th argument
echo "2nd argument: $2"
echo "4th argument: $4"

var1=$1
var2=$2
[[ ${var1} -eq ${var2} ]]
echo $?
