Q)2. Create a class ‘Employee’ with data members Empid, Name, Salary, Address and constructors to initialize the data members. Create another class ‘Teacher’ that inherit the properties of class employee and contain its own data members department, Subjects taught and constructors to initialize these data members and also include display function to display all the data members. Use array of objects to display details of N teachers. 

Code: 

import java.util.*;

class Employee {
    int empId;
    String name, address;
    double salary;

    Employee(int empId, String name, double salary, String address) {
        this.empId = empId;
        this.name = name;
        this.salary = salary;
        this.address = address;
    }
}

class Teacher extends Employee {
    String department, subject;

    Teacher(int empId, String name, double salary, String address, String department, String subject) {
        super(empId, name, salary, address);
        this.department = department;
        this.subject = subject;
    }

    void display() {
        System.out.println("\nID: " + empId);
        System.out.println("Name: " + name);
        System.out.println("Salary: " + salary);
        System.out.println("Address: " + address);
        System.out.println("Department: " + department);
        System.out.println("Subject: " + subject);
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter number of teachers: ");
        int n = sc.nextInt();
        sc.nextLine();

        Teacher[] t = new Teacher[n];

        for (int i = 0; i < n; i++) {
            System.out.println("\nEnter details of Teacher " + (i + 1));
            System.out.print("ID: ");
            int id = sc.nextInt();
            sc.nextLine();
            System.out.print("Name: ");
            String name = sc.nextLine();
            System.out.print("Salary: ");
            double sal = sc.nextDouble();
            sc.nextLine();
            System.out.print("Address: ");
            String addr = sc.nextLine();
            System.out.print("Department: ");
            String dept = sc.nextLine();
            System.out.print("Subject: ");
            String subj = sc.nextLine();

            t[i] = new Teacher(id, name, sal, addr, dept, subj);
        }

        System.out.println("\n--- Teacher Details ---");
        for (Teacher teacher : t)
            teacher.display();
    }
}



Output:

Enter number of teachers: 2

Enter details of Teacher 1
ID: 101
Name: Alice
Salary: 50000
Address: New York
Department: CS
Subject: Java

Enter details of Teacher 2
ID: 102
Name: Bob
Salary: 55000
Address: California
Department: IT
Subject: Python

--- Teacher Details ---

ID: 101
Name: Alice
Salary: 50000.0
Address: New York
Department: CS
Subject: Java

ID: 102
Name: Bob
Salary: 55000.0
Address: California
Department: IT
Subject: Python


Algorithm:
Step 1: Define Employee class with empId, name, salary, address.
Step 2: Define Teacher class inheriting Employee with department, subject and display() method.
Step 3: In main(), prompt user for the number of teachers (n).
Step 4: Create an array t[] of size n to store Teacher objects.
Step 5: Loop through n and collect teacher details (empId, name, salary, address, department, subject), store in Teacher objects.
Step 6: Display the details of all teachers using the display() method.
