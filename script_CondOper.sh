#!/bin/bash
#Tasks for topic of special variables
#checks if 1st and 2nd string arguments are equal and outputs the exit code of this operation
if [[ -z "$1" ]]; then
  echo "String par1 is empty"
elif [[ -n "$1" ]]; then
  echo "String par1 is not empty"
fi

if [[ -z "$2" ]]; then
  echo "String par2 is empty"
elif [[ -n "$2" ]]; then
  echo "String par2 is not empty"
fi
echo "Exit code. Operation for check: are 1st and 2nd string arguments equal"
[[ "$1" == "$2" ]]
echo $?

if [[ "$1" != "$2" ]]; then
  echo "1st and 2nd string arguments are not equal" 
elif [[ "$1" == "$2" ]]; then
  echo "1st and 2nd string arguments are equal"
fi

#checks if 1st string argument is longer than 2nd string argument and outputs the exit code of this operation
echo "Exit code. Operation for check if 1st string argument is longer than 2nd string argument..."

par1=$1
par2=$2
echo "Length of par1 - " ${#par1}
echo "Length of par2 - " ${#par2}

if (( ${#par1} > ${#par2} )); then
   echo "1st string argument is longer than 2nd string argument"
else
   echo "1st string argument is not longer than 2nd string argument"
fi
[[ ${#par1} -gt ${#par2} ]]
echo $?

#checks if variable TEST is present in the environment (has non-zero length) and outputs the exit code of this operation
echo "Exit code. Operation for check if variable TEST is present in the environment (has non-zero length)..."
[[ -z "$*" ]]
echo $?

#checks if 3rd and 4th integer arguments are not equal and outputs the exit code of this operation
echo "Exit code. Operation for check if 3rd and 4th integer arguments are not equal..."
[[ $3 -ne $4 ]]
echo $?

#checks if 3rd integer argument is greater or equal to 4th integer argument and outputs the exit code of this operation
echo "Exit code. Operation for check if 3rd integer argument is greater or equal to 4th integer argument..."
[[ $3 -ge $4 ]]
echo $?
