# Bash, Python
Tasks for Bash and Python (DevOps training at EPAM University)
###
01 Task (script_special_var.sh)
Create a script that does the following:
  prints the name of the script
  prints all arguments
  prints the number of arguments passed to the script
  prints 2nd and 4th argument
  print the exit code of -eq operation on 1st and 2nd arguments (use [[]])
- execute your script like this: ./my_script.sh 1 2 hello world
- change the script arguments so that the result of the last operation (-eq) would be 0
- run the script again with new arguments
Self-check:
- first script run results:
./my_script.sh
1 2 hello world
4
2 world
1
- second script run results contain 0 as the last output

02 Task (script_cond_oper.sh)
Create a script file in your home directory that does the following:
  checks if 1st and 2nd string arguments are equal and outputs the exit code of this operation
  checks if 1st string argument is longer than 2nd string argument and outputs the exit code of this operation
  checks if variable TEST is present in the environment (has non-zero length) and outputs the exit code of this operation
  checks if 3rd and 4th integer arguments are not equal and outputs the exit code of this operation
  checks if 3rd integer argument is greater or equal to 4th integer argument and outputs the exit code of this operation
- run your script with "hi world 7 9" arguments
- add TEST environment variable with "123" value
- re-run the script with "hello hello 10 7" arguments
Self-check:
- first script run should return the following values:
1
1
1
0
1
- second script run should return the following values:
0
1
1
0
0

03 Task (odd_even.sh and my_script.sh)
Create a script called odd_even.sh that does the following:
takes one argument
if the number of letters in the argument is odd, outputs the message "Odd", else if the number of letters is even - outputs "Even"
- run the script first with "odd" argument, then with "even" argument
- create a script called my_script.sh that does the following:
takes any number of arguments
if there are less than 2 arguments, output the values of these arguments
if there are more than 2 but less than 4 arguments, output only the last argument
else output "Invalid number of arguments" message
- run my_script.sh with the following arguments:
hello
hello world
pie is lie
keep calm and procrastinate

Self-check:
- odd_even.sh script outputs:
first run: Odd
second run: Even
- my_script.sh script outputs:
hello
Invalid number of arguments
lie
Invalid number of arguments

04 Task (script_for_loop)
- create a script that does the following:
accepts any number of int arguments
outputs the sum of all arguments
outputs the number of arguments
outputs the average of all arguments
- execute your script with the following arguments 1 2 3 4 5
Self-check:
- your script outputs the following:
Sum: 15
Args number: 5
Result: 3

05 Task (console.sh)
Create console.sh script that does the following:
implements console functionality - infinite loop that reads user input on each iteration
supports commands:
ls [dir] - lists the contents of specified directory
pwd - shows the path to current directory
hi - outputs "Hello <name of the current user>" 
exit - ends the script
- run your script and test implemented commands
Self-check:
./script.sh
ls ~
script.sh
pwd
/Users/Uladzimir_Semiankou/homework
hi
Hello Uladzimir_Semiankou
exit
  
13 Task (script13_until_loop.sh)
Create a script that does the following:
reads a filename from user input
combines specifyed file with itself until it reaches a size greater than 1024 KB
- create a file using head -c 4KB /dev/urandom > file.txt command
- execute your script passing the file you've just created
Self-check:
- script returns the following output:
Filesize: 8
Filesize: 16
Filesize: 32
Filesize: 64
Filesize: 128
Filesize: 256
Filesize: 504
Filesize: 1004
Filesize: 2004

  14 Task (script14_positional_arg.sh)
Tasks:
- create a script that does the following:
accepts any number of arguments
prints all arguments in the following format "Arg1: <arg1 value>", "Arg2: <arg2 value>"
adds the value of the next argument to the previous one and prints it out (for the last argument add the value of the first one)
- run the script with 7 1 5 7 4 3 6 arguments
Self-check:
- script run returns the following results:
Arg1: 7
Arg2: 1
Arg3: 5
Arg4: 7
Arg5: 4
Arg6: 3
Arg7: 6
8 6 12 11 7 9 13
