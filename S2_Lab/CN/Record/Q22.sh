Q)Shell script to count the occurrence of words in a file in a set of files


Code:

if [ $# -eq 0 ]
then
echo "Syntax: $0 <word> <file1> <file2> ..."
exit 1
fi
word=$1
shift
count=0
while [ $# -ne 0 ]
do
for wd in `cat $1`
do
if [ $wd = $word ]
then
count=`expr $count + 1`
fi
done
shift
done
echo "no.of occurance of words = $count"

Algorithm:
Step 1: If no args given, show syntax and exit.
Step 2: Set word to first arg, then remove it from args.
Step 3: Set count to 0.
Step 4: For each file in args:
 – Read each word in the file.
 – If word matches word, increase count by 1.
Step 5: Move to next file until done.
Step 6: Print total count of occurrences.
Step 7: End.


Input:

vi file1.txt

 ----------------------file1.txt--------------------
 Hello good morning!
 This is the first line
 This is the second line
-------------------------------------------------------

sh wordoccurance.sh This file1.txt 


Output:
no.of occurance of words = 2