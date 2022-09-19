#!/bin/bash

#create a script that does the following:
#reads a filename from user input
#combines specifyed file with itself until it reaches a size greater than 1024 KB
#create a file using head -c 4KB /dev/urandom > file.txt command
#execute your script passing the file you've just created

MAX_SIZE="$((1024*1000))"

echo "Enter file name:"
read FILENAME

head -c 4KB /dev/urandom > $FILENAME
FILE_SIZE=$(stat --format=%s $FILENAME)

until [ $FILE_SIZE -gt $MAX_SIZE ]
do
  cp $FILENAME tmp
  cat tmp >> $FILENAME
  FILE_SIZE=$(stat --format=%s $FILENAME)
  echo "Filesize: $(($FILE_SIZE/1000))"
done

rm tmp
