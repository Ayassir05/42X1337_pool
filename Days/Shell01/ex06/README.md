  The command ls -l | awk 'NR % 2 == 1' performs the following steps:

  ls -l:

This lists the contents of the current directory in long format (detailed view), showing information such as file permissions, number of links, owner, group, file size, and modification date.

  | (pipe):

The pipe takes the output of ls -l and passes it as input to the next command (awk).

  awk 'NR % 2 == 1':

awk processes the input line by line.

  NR is a built-in variable in awk that represents the line number (record number).

NR % 2 == 1 is a condition that checks if the line number is odd (i.e., the remainder when divided by 2 is 1).

If the condition is true, awk prints the line.
