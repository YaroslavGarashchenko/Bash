#!/bin/sh

# Create a script that does the following:
# has a function that multiplies the argument passed to it by itself
# has a second function that passes each argument passed to the script to the first function and increases the result by 1 and outputs to the console
# - run your function with the following arguments: 5 6 1 3 9
# Self-check:
# - function returns the following output:
# 26
# 37
# 2
# 10
# 82

function multiply(){
  return $(($i*$i));
}

function add_one(){
  multiply $i
  return $(($?+1))
}

for i in $*;
do
  add_one $i
  echo $?
done
