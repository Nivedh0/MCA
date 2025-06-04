import java.util.Scanner;

public class MatrixMultiplication {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Read size of first matrix
        System.out.print("Enter rows and columns of first matrix (A): ");
        int r1 = sc.nextInt();
        int c1 = sc.nextInt();

        // Read size of second matrix
        System.out.print("Enter rows and columns of second matrix (B): ");
        int r2 = sc.nextInt();
        int c2 = sc.nextInt();

        // Check if multiplication is possible
        if (c1 != r2) {
            System.out.println("Matrix multiplication not possible. Columns of A must equal rows of B.");
            return;
        }

        // Initialize matrices
        int[][] A = new int[r1][c1];
        int[][] B = new int[r2][c2];
        int[][] C = new int[r1][c2]; // Result matrix

        // Read matrix A
        System.out.println("Enter elements of matrix A:");
        for (int i = 0; i < r1; i++) {
            for (int j = 0; j < c1; j++) {
                A[i][j] = sc.nextInt();
            }
        }

        // Read matrix B
        System.out.println("Enter elements of matrix B:");
        for (int i = 0; i < r2; i++) {
            for (int j = 0; j < c2; j++) {
                B[i][j] = sc.nextInt();
            }
        }

        // Perform matrix multiplication: C = A x B
        for (int i = 0; i < r1; i++) {
            for (int j = 0; j < c2; j++) {
                C[i][j] = 0;
                for (int k = 0; k < c1; k++) {
                    C[i][j] += A[i][k] * B[k][j];
                }
            }
        }

        // Print result matrix C
        System.out.println("Resultant matrix (A x B):");
        for (int i = 0; i < r1; i++) {
            for (int j = 0; j < c2; j++) {
                System.out.print(C[i][j] + " ");
            }
            System.out.println();
        }

        sc.close();
    }
}