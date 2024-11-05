"Firstly, the exercise provides a file named resources.tar.gz as a resource (i'll put the file in Days/Shell00/ex07/resources.tar.gz). We need to download it and extract its contents."

"This line copies the resources.tar.gz archive from the Downloads folder to the current directory."
cp ~/Downloads/resources.tar.gz .

"This extracts the contents of resources.tar.gz in the current directory."
tar -xf resources.tar.gz

" This command applies the patch from sw.diff to the file a, creating a new file b that reflects the patched changes."
patch a -o b < sw.diff

"This line compares the original file a and the modified file b, and outputs the differences to sw.diff."
diff a b > sw.diff
