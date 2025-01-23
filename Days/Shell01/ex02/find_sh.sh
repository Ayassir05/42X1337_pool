#!/bin/bash
find . -type f -name "*.sh" -exec basename {} .sh \;

#Parts:

#find .:
#Starts searching from the current directory (.) and all its subdirectories.
#-type f:
#Restricts the search to regular files (excludes directories).
#-name "*.sh":
#Looks for files with names ending in .sh.
#-exec:
#Runs a command (basename) on each file found.
#basename {} .sh:
#Extracts the file name (without the directory path) and removes the .sh extension from it. {} is replaced by each file found.
#\;:
#Ends the -exec command, ensuring it runs for each file individually
