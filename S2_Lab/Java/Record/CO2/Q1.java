Q)Program to sort strings


code:

import java.util.Arrays;
import java.util.Scanner;

public class SortStrings {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the number of strings: ");
        int n = scanner.nextInt();
        scanner.nextLine();
        String[] words = new String[n];
        System.out.println("Enter the strings:");
        for (int i = 0; i < n; i++) {
            words[i] = scanner.nextLine();
        }
        Arrays.sort(words);
        System.out.println("Sorted Strings:");
        for (String word : words) {
            System.out.println(word);
        }
    }
}

output:

Enter the number of strings: 3
Enter the strings:
Apple
Banana
Orange
Sorted Strings:
Apple
Banana
Orange

=== Code Execution Successful ===



Algorithm: Sort an Array of Strings
Step 1: Read integer n – total number of strings.
Step 2: Declare String[] words = new String[n].
Step 3: Read n strings into the array words.
Step 4: Use Arrays.sort(words) to sort the array alphabetically.
Step 5: Print each string from the sorted array.