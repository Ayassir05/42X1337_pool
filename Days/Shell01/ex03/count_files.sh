#!/bin/bash
find . | wc -l | tr -d ' '









#Explanation (Part by Part):
#find .:

#Starts searching from the current directory (.).
#Lists all files and directories it finds, including the current directory itself.
#| (Pipe):

#Passes the output of find . (a list of items) as input to the next command.
#wc -l:

#Counts the number of lines in the input received from find ..
#Each item (file or directory) from find . appears on a new line, so the total line count equals the number of items.
#| (Pipe again):

#Passes the output of wc -l (a number) to the next command.
#tr -d ' ':

#Removes any spaces from the output to ensure it’s clean and compact.
