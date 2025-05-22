Q)Shell script to display a file from last line to first line



Code:
if [ $# -ne 1 ]
then
        echo "Syntax is <$0><filename>"
        exit 1
fi
if [ -d $1 ]
then
        echo " $1 is a dictionary"
        exit 2
fi
cp $1 file
l=`cat file | wc -l`
revfname="$1.rev"
rm $revfname 2>/dev/null
while [ $l -ge 1 ]
do
        tail -n 1 file >> $revfname
        l=`expr $l - 1`
        head -n $l file > temp
        mv temp file
done


Algorithm:
Step 1: If args ≠ 1, show syntax and exit.
Step 2: If input is a directory, show message and exit.
Step 3: Copy file to a temp file named file.
Step 4: Count total lines in file and store in l.
Step 5: Remove output file <filename>.rev if it exists.
Step 6: While l ≥ 1:
 – Add last line of file to <filename>.rev.
 – Decrease l by 1.
 – Keep first l lines in a temp file.
 – Replace file with temp file.
Step 7: End.

Input:
vi file1.txt
----------------------create file1.txt--------------------
Hello good morning!
This is the first line
This is the second line

-----------------------------------------------------------

sh reverse.sh file1.txt


Output:
vi file1.txt
----------------------file1.txt.rev--------------------
This is the second line
This is the first line
Hello good morning!

-----------------------------------------------------------


