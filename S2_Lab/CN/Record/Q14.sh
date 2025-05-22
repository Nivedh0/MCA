Q)Shell script to rename all ordinary files in a directory with filename.PID of shell


code:
if [ $# -gt 1 ]
then
        echo "Syntax is<$0><location>or<$0>"
        exit 1
fi
if [ $# -ne 0 ]
then
        cd$1
fi
for i in *
do
if [ -f $i ]
then
        mv $i $i.$$
        echo "file renamed to .$$ "
        fi
done
Input:
sh rename.sh
ls

Output:
file renamed to .790





#rename.sh.790*

Algorithm:
Step 1: Check if the number of arguments is greater than 1.
        If true, print a syntax error message and exit.
Step 2: If exactly 1 argument is provided, change the current directory to the specified location.
Step 3: Use a for loop to go through each item in the current directory.
Step 4: For each item, check if it is a regular file.
        If true, rename the file by appending the current process ID ($$) to its name.
Step 5: After renaming, print a message showing the new file name.
