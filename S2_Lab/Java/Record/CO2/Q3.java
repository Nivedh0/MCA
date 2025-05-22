Q)Perform string manipulations

code:

import java.util.Scanner;

public class StringManipulation {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a string: ");
        String input = sc.nextLine();

        System.out.println("Length: " + input.length());
        System.out.println("Uppercase: " + input.toUpperCase());
        System.out.println("Lowercase: " + input.toLowerCase());

        String reversed = new StringBuilder(input).reverse().toString();
        System.out.println("Reversed: " + reversed);

        if (input.equalsIgnoreCase(reversed)) {
            System.out.println("It is a palindrome.");
        } else {
            System.out.println("It is not a palindrome.");
        }

    }
}

output:

Enter a string: Hello World
Length: 11
Uppercase: HELLO WORLD
Lowercase: hello world
Reversed: dlroW olleH
It is not a palindrome.

=== Code Execution Successful ===


Algorithm: String Manipulation and Palindrome Check
Step 1: Read a string.
Step 2: Get the length of the string using String.length().
Step 3: Convert the string to uppercase using String.toUpperCase().
Step 4: Convert the string to lowercase using String.toLowerCase().
Step 5: Reverse the string using StringBuilder.reverse() and convert it to a string using toString().
Step 6: Compare original and reversed strings using String.equalsIgnoreCase():
    If they match, it's a palindrome.
    Otherwise, it's not a palindrome.