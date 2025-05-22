Q)Shell script to modify cp command considering all error possibilities

Code:
if [ $# -ne 2 ]
then
echo "\n syntax is <$0> <src filename> <tgt filename>"
exit 1
fi
if [ ! -f $1 ]
then
echo "$1 is not existing or not an ordinary file"
exit 2
fi
if [ -f $2 ]
then
echo "target file exists,overwrite it (y/n)"
read ans
if [ $ans -eq"n" ]
then
exit 3
fi
fi
cp $1 $2
echo "file copied"
exit 0




Algorithm:
Step 1: If args ≠ 2, show syntax and exit.
Step 2: Check if source file exists and is a regular file; if not, exit.
Step 3: If target file exists, ask to overwrite (y/n).
Step 4: If answer is ‘n’, exit.
Step 5: Copy source file to target file.
Step 6: Print “file copied” message.
Step 7: Exit.

Input 1:
$ sh copyerror.sh file.txt file4.txt

Output 1:
file.txt is not existing or not an ordinary file

Input 2:
$ sh copyerror.sh file.txt newfile2.txt

Output 2:
target file exists,overwrite it (y/n)
y
file copied

