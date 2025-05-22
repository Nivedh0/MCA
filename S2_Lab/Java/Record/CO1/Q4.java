Q)Read a matrix from the console and check whether it is symmetric or not.

code:

import java.util.Scanner;
public class symmetricmatrix
    {
        public static void main(String[] args)
        {
            Scanner sc=new Scanner(System.in);
            int i,j;
            System.out.print("Enter The size of a matrix: ");
            int r=sc.nextInt();
            int[][]a=new int[r][r];
            int[][]b=new int[r][r];
            System.out.println("Enter the matrix elements: ");
            for(i=0;i<r;i++)
                {
                    for(j=0;j<r;j++)
                        {
                            a[i][j]=sc.nextInt();
                        }
                }

            boolean sym=true;

            for(i=0;i<r;i++)
                {
                    for(j=0;j<r;j++)
                        {
                            if(a[i][j]!=a[j][i])
                                {
                                    sym=false;
                                    break;
                            }
                        }
                }
            if(sym)
                {
                    System.out.println("matrix is symmetric");
                }
            else
                {
                    System.out.println("matrix is not symmetric");
                }
            }
    }


output:

Enter The size of a matrix:   2
Enter the matrix elements: 
2 0
0 2
matrix is symmetric

=== Code Execution Successful ===



Algorithm: Check Symmetric Matrix
Step 1: Read matrix size r.
Step 2: Declare matrix a[r][r].
Step 3: Read all elements into matrix a.
Step 4: Set flag sym = true.
Step 5: For all i, j, check if a[i][j] == a[j][i].
Step 6: If any mismatch, set sym = false.
Step 7: If sym is true, print "matrix is symmetric", else print "not symmetric".