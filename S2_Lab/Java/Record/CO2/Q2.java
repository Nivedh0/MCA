Q)Search an element in an array.

code:

import java.util.*;
import java.io.*;
class arraysearch
{
        public static void main(String args[])
        {
                int k=0,i,n,x;
                Scanner z=new Scanner(System.in);

                System.out.println("Enter the number of Elements :");
                n=z.nextInt();
                int []a=new int[n];

                System.out.println("Enter the array Elements : ");

                for(i=0;i<n;i++)
                {
                        a[i]=z.nextInt();
                }

                System.out.println("Enter the Element you want to search : ");
                x=z.nextInt();

                for(i=0;i<n;i++)
                {
                if(a[i]==x)
                {
                        i++;
                        System.out.println("The value is found at : "+i+"th position ");
                        k=1;
                        break;
                }
                }

                if(k==0)
                {
                        System.out.print("The Element is not in the array ");
                }
        }
}


output:

Enter the number of Elements : 6
Enter the array Elements : 2 3 4 5 6 7
Enter the Element you want to search : 4
The value is found at : 3
=== Code Execution Successful ===



Algorithm: Search an Element in an Array
Step 1: Read integer n – number of elements.
Step 2: Declare integer array a[] of size n.
Step 3: Read n elements into the array.
Step 4: Read the search element x.
Step 5: Traverse the array using loop:
    If a[i] == x, print its position (i + 1) and set flag k = 1.
    Break the loop.
Step 6: If flag k == 0, print that element is not found.
