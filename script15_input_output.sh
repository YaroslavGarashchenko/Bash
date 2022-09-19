#!/bin/bash

# Create a script that does the following:
# asks the user to input a filename
# writes the following poem to the file specified by user:
# An old silent pond...
# A frog jumps into the pond,
# splash! Silence again.
# 
# Autumn moonlight-
# a worm digs silently
# into the chestnut.
# 
# In the twilight rain
# these brilliant-hued hibiscus -
# A lovely sunset.
# 
# outputs the poem to the terminal
# outputs the message "Task finished" to stderr
# - run your script, specify output as the file to write the poem to, redirect stdout to /dev/null, redirect stderr to stderr file
# Self-check:
# - script returns no output
# - cat output command returns:
# 
# An old silent pond...
# A frog jumps into the pond,
# splash! Silence again.
# 
# Autumn moonlight-
# a worm digs silently
# into the chestnut.
# 
# In the twilight rain
# these brilliant-hued hibiscus -
# A lovely sunset.
# 
# - cat stderr command returns:
# Task finished

POEM_FILE_NAME="poem.txt"

echo "Set the file name for poem!"
read file_name

cat $POEM_FILE_NAME | tee $file_name 1> output.txt

echo "Task finished" > stderr
