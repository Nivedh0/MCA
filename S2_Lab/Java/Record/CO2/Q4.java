Q)Program to create a class for Employee having attributes eNo, eName eSalary. Read n 
employ information and Search for an employee given eNo, using the concept of Array of 
Objects


code:

import java.util.Scanner;

class Employee {
    int eNo;
    String eName;
    double eSalary;

    Employee(int eNo, String eName, double eSalary) {
        this.eNo = eNo;
        this.eName = eName;
        this.eSalary = eSalary;
    }

    void show() {
        System.out.println("No: " + eNo + ", Name: " + eName + ", Salary: " + eSalary);
    }
}

public class EmployeeSearch {
    public static void main (String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("How many employees? ");
        int n = sc.nextInt();
        Employee[] emp = new Employee[n];

        for (int i = 0; i < n; i++) {
            System.out.print("Enter No, Name, Salary: ");
            int no = sc.nextInt();
            String name = sc.next();
            double sal = sc.nextDouble();
            emp[i] = new Employee(no, name, sal);
        }

        System.out.print("Enter employee number to search: ");
        int search = sc.nextInt();
        boolean found = false;

        for (Employee e : emp) {
            if (e.eNo == search) {
                e.show();
                found = true;
                break;
            }
        }

        if (!found)
            System.out.println("Employee not found.");

        sc.close();
    }
}


output:

How many employees? 2
Enter No, Name, Salary: 101 Alice 30000
Enter No, Name, Salary: 102 Bob 35000
Enter employee number to search: 101
No: 101, Name: Alice, Salary: 30000.0


Algorithm: Employee Record Search
Step 1: Define the Employee class with attributes eNo, eName, and eSalary.
Step 2: Input the number of employees (n).
Step 3: Create an array to store Employee objects.
Step 4: For each employee, input their number (eNo), name (eName), and salary (eSalary).
Step 5: Input the employee number to search for.
Step 6: Loop through the array of employees and check if the entered number matches any employee’s eNo.
        If a match is found, display their details.
        If no match is found, display "Employee not found."
