vim git_ignore.sh

"Method 1"
#!/bin/bash
git ls-files --others --ignored --exclude-standard

"Method 2"
git ls-files -oi --exclude-standard

"This is the short form of the command to display all ignored files in your Git repository."
 git ls-files: "Lists files in the repository."
--others: "Shows files that are not tracked by Git."
--ignored: "Lists files ignored by Git, based on .gitignore."
--exclude-standard: "Ignores patterns from .gitignore and other ignore files like .git/info/exclude.
