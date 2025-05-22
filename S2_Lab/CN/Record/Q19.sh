Q)Shell script to display the content of a directory file in windows style


Code:
echo -e "\n\n Directory of `pwd` \n"
for f in *
do
#dpart=`ls -l $f | cut -d ' ' -f6,7`
fdatetime=`date -r $f "+%d-%m-%y %H:%M:%S"`
if [ -d $f ]
then
echo -e "$f \t\t<DIR>\t\t $fdatetime"
else
f_size=`cat $f | wc -c`
echo -e "$f \t\t $f_size \t $fdatetime"
fi
done


Algorithm:
Step 1: Show current directory path.
Step 2: For each file/dir in current folder.
Step 3: Get its last modified date & time.
Step 4: If it's a directory, print name, <DIR>, and time.
Step 5: If it's a file, get size in bytes and print name, size, and time.
Step 6: Repeat till all items are done.
Step 7: End.


Input:
sh window.sh file1.txt

Output:
 Directory of /c/Users/MCA19/Desktop/New folder

A.SH.1610                225     22-05-25 13:35:05
b.sh                     265     22-05-25 14:09:00

