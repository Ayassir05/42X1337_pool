"//Firstly we create a file"
touch testShell00

"//Secondly we print 40 charaters"
printf "1234567890123456789012345678901234567890" > testShell00 

"//if you wanna replace the PRINTF with ECHO you should put just 39 characters cause the newline by default in ECHO command or you can add -e for stopping newline by default

//next step we gonna edit time of file"
touch -ct 06012342 testShell00

"//-c : do not create any files & -t : changing the current date

//now we gonna change the file's permissions"
chmod 455 testShell00

"//the last command for archive testShell00 in testShell00.tar"
tar -cf testShell00.tar testShell00

"//after that you can remove testShell00 cause if you it you can got it with this command : tar -tf testShell00.tar
//tar: This is the command to create an archive.
//-c: This option tells tar to create a new archive.
//-f: This option specifies the file name of the archive you are creating (in this case ,testShell00)
