Q)Shell script to compare two files. If the files are identical delete one


Code:

if [ $# -ne 2 ]
then
        echo "Syntax is <$0> <file1> <file2>"
elif [ -f $1 -a -f $2 ]
then
        cmp $1 $2 >/dev/null
        if [ $? -eq 0 ]
        then
                echo " the file $1 and $2 are same"
                rm -f $1
                echo "$1 deleted"
        else
                echo "$1 and $2 are not same"
        fi
else
        echo "files are not ordinary files"
fi


Algorithm:
Step 1: If args ≠ 2, show syntax and exit.
Step 2: If both are regular files, compare them.
Step 3: If same, show message, delete first file.
Step 4: If not same, show message.
Step 5: If not regular, show error.
Step 6: End.

Input:
sh compare.sh file1.txt file2.txt


Output:
file1.txt and file2.txt are not same
