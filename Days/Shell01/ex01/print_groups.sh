#!/bin/bash
id -Gn "$FT_USER" | tr " " "," | tr -d "\n"

1: (shebang) always include the appropriate shebang to make your scripts reliable and predictable.
2: id : Displays information about a user.
   -G: Lists all the group IDs the user belongs to.
   -n: Shows the group names instead of their numeric IDs.
   "$FT_USER": Refers to the environment variable FT_USER, which contains the username you re checking.
   | (Pipe): Passes the output of the previous command (id -Gn "$FT_USER") as input to the next command.
   tr " " ",": Converts all spaces in the group list to commas.
   tr -d "\n": Removes the newline character from the end of the output, ensuring the result stays on a single line.

#steps to get the same output:
#first :
#vim print_groups.sh
#write the command
#Make it executable:
#chmod +x print_groups.sh
#FT_USER=nours
#./print_groups.sh
