Q)Shell script to print specified range of lines from given files

Code:
if [ $# -le 2 ]
then
echo "syntax is <$0> <start_line> <end_line> <files>"
exit 1
fi
# Get range
n1=$1
n2=$2
shift
shift
# Calculate number of lines to extract
n3=$(expr $n2 - $n1 + 1)
# Process each file
while [ $# -ne 0 ]
do
echo -e "\nlines from $n1 to $n2 from $1\n"
head -n $n2 "$1" | tail -n $n3
shift
done
exit 0

Input:
--------------------file1.txt--------------------------
Hello good morning!
This is the Second line
This is the Third line

-------------------------------------------------------
sh range.sh file1.txt 2-3

Output:
lines from 2 to 3 from Q8.sh

This is the Second line
This is the Third line


Algorithm:
Step 1: If args ≤ 2, show syntax and exit.
Step 2: Set n1 = start line, n2 = end line.
Step 3: Remove first two args (lines), keep files.
Step 4: Find number of lines to print: n3 = n2 - n1 + 1.
Step 5: For each file:
 – Print header with line range and filename.
 – Print lines from n1 to n2 using head and tail.
Step 6: Repeat for all files.
Step 7: Exit.