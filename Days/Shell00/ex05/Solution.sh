vim git_commit.sh 
#!/bin/bash
git log --format="%H" -n 5

#!/bin/bash tells the system to run the script using the Bash shell interpreter.
"git log: Displays the commit history."
"--format="%H": Formats the output to show only the commit hash (ID).
"-n 5: Limits the output to the last 5 commits.
