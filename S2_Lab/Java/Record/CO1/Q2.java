Q)Read 2 matrices from the console and perform matrix addition.

code:

import java.util.Scanner;
class Matrixadd{
public static void main(String[] args){
Scanner sc=new Scanner(System.in);
int row,col,i,j;

System.out.print("Enter number of  row ,col : ");
row=sc.nextInt();
col=sc.nextInt();
int a[][]=new int[row][col];
int b[][]=new int[row][col];
int sum[][]=new int[row][col];

System.out.println("Enter the elements first matrix : ");
for(i=0;i<row;i++){
for(j=0;j<col;j++){
a[i][j]=sc.nextInt();
}
}

System.out.println("Enter the elements second matrix : ");
for(i=0;i<row;i++){
for(j=0;j<col;j++){
b[i][j]=sc.nextInt();
}
}


System.out.println("Sum of matrix : ");
for(i=0;i<row;i++){
for(j=0;j<col;j++){
System.out.print((a[i][j]+b[i][j])+" ");
}
System.out.println();
}


}
}


output:

Enter number of  row ,col : 2 2
Enter the elements first matrix : 
2 0
0 1
Enter the elements second matrix : 
1 0
3 2
Sum of matrix : 
3 0 
3 3 

=== Code Execution Successful ===

Algorithm: Matrix Addition
Step 1: Declare int row, col, i, j.
Step 2: Read number of rows and columns (row, col).
Step 3: Declare matrices a[row][col], b[row][col], and sum[row][col].
Step 4: Read elements for matrix a.
Step 5: Read elements for matrix b.
Step 6: Add corresponding elements and store in sum.
Step 7: Display the sum matrix.
