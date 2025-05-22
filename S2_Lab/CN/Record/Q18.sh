Q)Shell script to delete all lines if a file containing word linux


Code:

if [ $# -ne 2 ]
then
        echo " syntax is<$0><string><filename>"
        exit 1
fi
term=`tty`
exec<$2
while read line
do
        echo $line | grep $1>/dev/null
        echo $line | grep -w $1>/dev/null
        if [ $? -ne 0 ]
        then
                echo $line >>temp
        fi
done
exec<$term
mv temp $2


Algorithm:
Step 1: If args ≠ 2, show syntax and exit.
Step 2: Save current terminal name to term.
Step 3: Redirect input from the given file.
Step 4: For each line: check if it has the exact word.
Step 5: If not matched exactly, add line to temp.
Step 6: Restore input back to terminal.
Step 7: Replace original file with temp.
Step 8: End.


Input:
--------------------------file3.txt----------------------
This line contains the word linux
Line without the word

----------------------------------------------------------------
sh linux.sh file3.txt


Output:

vi file3.txt

--------------------------file3.txt----------------------
Line without the word

----------------------------------------------------------------
