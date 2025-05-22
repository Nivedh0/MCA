Q)Shell script to count the number of words and lines in a file


Code:
if [ $# -gt 1 ]
then
        echo "syntax is <$0> [<filename>]"
        exit 1
fi
flag=0
if [ $# -eq 1 ]
then
        term=`tty`
        exec <$1
fi
while read line
do
        no1=` expr $no1 + 1 `
        set $line>/dev/null
        nowds=` expr $nowds + $# `
done
echo "numbrer of lines=$no1"
echo "number of words=$nowds"
if [ $flag -eq 1 ]
then
        exec < $term
fi
exit 0


Algorithm:
Step 1: If more than one argument, show syntax and exit.
Step 2: Set line and word counters to 0.
Step 3: If filename given, read input from it.
Step 4: For each line:
 – Increase line count.
 – Count words and add to total.
Step 5: Print line and word counts.
Step 6: Restore terminal input if changed.
Step 7: Exit program.


Input:
$ sh wordcount.sh file1.txt


Output:
numbrer of lines=2
number of words=4

