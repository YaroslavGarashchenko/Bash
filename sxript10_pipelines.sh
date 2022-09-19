# Write a one line command using || and && operators that does the following:
#creates a folder named Name_Surname 
#if folder creation was successful, creates a file inside, called my_file
#if file creation was successfull, writes "Hello" into the file
#if previous operation was successful, lists the contents of the file
#if any of the operations fail, print "Something went wrong"
#- run the command two times
#- write a command that outputs only users that have /usr/bin/false shell from /etc/passwd file and changes the shell to /bin/bash
#Self check:
#- first command returns the following outputs:
#Hello
#mkdir: Name_Surname: File exists
#Something went wrong
#- second command returns similar output:
#nobody:*:-2:-2:Unprivileged User:/var/empty:/bin/bash
#daemon:*:1:1:System Services:/var/root:/bin/bash

(mkdir yaroslav_gar && touch ./yaroslav_gar/my_file && echo "Hello" > ./yaroslav_gar/my_file && cat ./yaroslav_gar/my_file ) || echo "Something went wrong"
cat /etc/passwd | grep /sbin/nologin | sed "s/sbin/nologin/bin/bash/g"
