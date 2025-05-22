Q)Shell script to copy a set of files given as pairs at command prompt


Code:

r=`expr $# % 2`
if [ $r -ne 0 ]
then
echo "filenames are not in pairs"
exit 1
fi
while [ $# -ne 0 ]
do
cp "$1" "$2"
echo "Copied '$1' to '$2'"
shift
shift
done
exit 0


Algorithm:
Step 1: Check if number of args is even; if not, show error and exit.
Step 2: Loop through args two at a time.
Step 3: Copy first file to second file.
Step 4: Print copy confirmation.
Step 5: Shift by two to next pair.
Step 6: Repeat until no args left.
Step 7: Exit.

Input:
---------------------file1.txt--------------------------
Hello good morning!
This is the first line
This is the second line
-------------------------------------------------------

$ sh copy.sh file.txt newfile.txt

Output:
Copied 'file.txt' to 'newfile.txt'



vi newfile.txt
---------------------newfile.txt--------------------------
Hello good morning!
This is the first line
This is the second line
-------------------------------------------------------