"//Firstly , we'll create two directories & three files."

mkdir test{0,2}
touch test{1,3,4}
"//in the exercise you see test5 & test6 which i'm not creating yet , cause its not a normal (files/directories).
//test6 is Soft link point to test0 directory.
//test5 is Hard link point to test3 file.
//Soft Link (Symbolic Link): A pointer or shortcut to the original file or directory. If the original file is deleted, the soft link becomes broken and inaccessible.
//Hard Link: A direct reference to the physical data on the disk. Both the hard link and the original file share the same data, so if the original is deleted, the hard link still provides access to the data."

ln test3 test5
ln -s test0 test6
"//Following the creation of the files and directories, it's necessary to modify the files size in bytes."

echo -n "2002" > test1
echo -n "1" > test3
echo -n "11" > test4
echo -n "20056" > test6
"//After modifying the files size , it's time to edit the timestamps (time & date) for each file/directory."

touch -t 06012047 test0
touch -t 06012146 test1
touch -t 06012245 test2
touch -t 06012344 test3
touch -t 06012343 test4
touch -h -t 06012220 test6
"//After that, we'll edit permissions."

chmod 715 test0
chmod 714 test1
chmod 504 test2
chmod 404 test3
chmod 641 test4

"//Finally, the last step & command for this exercise is : tar -cf exo2.tar * , This command takes all the files in the current directory (matched by *) and packages them into a single archive named "exo2.tar".
tar: The command for working with tar archives (a way of packaging multiple files into a single file).
-c: Stands for "create" It tells tar to create a new archive.
-f: Specifies the name of the archive file to be created (in this case, exo2.tar).
exo2.tar: The name of the resulting tar archive file.
*: A wildcard that matches all files in the current directory."

tar -cf exo2.tar *
"//when we wanna extract the files & the directories and preserves their permissions we use this command :"tar -xpf exo2.tar".
-x: Extracts files from the archive.
-p: Preserves file permissions exactly as they are stored in the archive. Without this option, extracted files may have their permissions changed to match the default permissions of the extracting user.
-f: Specifies the file name of the archive(exo2.tar).
