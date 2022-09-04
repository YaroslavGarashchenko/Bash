# Bash
Tasks for bash (DevOps training at EPAM University)

01 Task (script_special_var.sh)
- create a script that does the following:
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
Helpful materials:

https://tldp.org/LDP/abs/html/internalvariables.html

https://devhints.io/bash

02 Task (script_cond_oper.sh)
- create a script file in your home directory that does the following:
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
Helpful materials:

https://tldp.org/LDP/abs/html/testconstructs.html

https://devhints.io/bash
