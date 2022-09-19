#!/bin/sh

#Task:
#- create a script that does the following:
# accepts any number of arguments
# prints all arguments in the following format "Arg1: <arg1 value>", "Arg2: <arg2 value>"
# adds the value of the next argument to the previous one and prints it out (for the last argument add the value of the first one)
# - run the script with 7 1 5 7 4 3 6 arguments
#Self-check:
# - script run returns the following results:
# Arg1: 7
# Arg2: 1
# Arg3: 5
# Arg4: 7
# Arg5: 4
# Arg6: 3
# Arg7: 6
# 8 6 12 11 7 9 13


for (( i=1; i<=$#; i++));
do
  echo "Arg$i:${*:$i:1}"
done

for (( i=1; i<=$#; i++));
do
  if [[ $i == ${#} ]];
  then
    echo "$((${*:$i:1}+$1))"
  else
    echo -n "$((${*:$i:1}+${*:$i+1:1}))  "
  fi
done
