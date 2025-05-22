Q)3. Create a class ‘Person’ with data members Name, Gender, Address, Age  and a constructor to initialize the data members and another class ‘Employee’ that inherits the properties of class Person and also contains its own data members like Empid, Company_name, Qualification, Salary and its own constructor. Create another class ‘Teacher’ that inherits the properties of class Employee and contains its own data members like Subject, Department, Teacherid and also contain constructors and methods to display the data members. Use array of objects to display details of N teachers. 



code:

import java.util.*;

class Person {
    String name, gender, address;
    int age;

    Person(String name, String gender, String address, int age) {
        this.name = name;
        this.gender = gender;
        this.address = address;
        this.age = age;
    }
}

class Employee extends Person {
    int empId;
    String company, qualification;
    double salary;

    Employee(String name, String gender, String address, int age,
             int empId, String company, String qualification, double salary) {
        super(name, gender, address, age);
        this.empId = empId;
        this.company = company;
        this.qualification = qualification;
        this.salary = salary;
    }
}

class Teacher extends Employee {
    String subject, department;
    int teacherId;

    Teacher(String name, String gender, String address, int age,
            int empId, String company, String qualification, double salary,
            String subject, String department, int teacherId) {

        super(name, gender, address, age, empId, company, qualification, salary);
        this.subject = subject;
        this.department = department;
        this.teacherId = teacherId;
    }

    void display() {
        System.out.println("\n--- Teacher Details ---");
        System.out.println("Teacher ID: " + teacherId);
        System.out.println("Name: " + name);
        System.out.println("Gender: " + gender);
        System.out.println("Address: " + address);
        System.out.println("Age: " + age);
        System.out.println("Emp ID: " + empId);
        System.out.println("Company: " + company);
        System.out.println("Qualification: " + qualification);
        System.out.println("Salary: " + salary);
        System.out.println("Department: " + department);
        System.out.println("Subject: " + subject);
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter number of teachers: ");
        int n = sc.nextInt();
        sc.nextLine();

        Teacher[] teachers = new Teacher[n];

        for (int i = 0; i < n; i++) {
            System.out.println("\nEnter details for Teacher " + (i + 1));

            System.out.print("Name: ");
            String name = sc.nextLine();

            System.out.print("Gender: ");
            String gender = sc.nextLine();

            System.out.print("Address: ");
            String address = sc.nextLine();

            System.out.print("Age: ");
            int age = sc.nextInt();
            sc.nextLine();

            System.out.print("Emp ID: ");
            int empId = sc.nextInt();
            sc.nextLine();

            System.out.print("Company: ");
            String company = sc.nextLine();

            System.out.print("Qualification: ");
            String qualification = sc.nextLine();

            System.out.print("Salary: ");
            double salary = sc.nextDouble();
            sc.nextLine();

            System.out.print("Subject: ");
            String subject = sc.nextLine();

            System.out.print("Department: ");
            String department = sc.nextLine();

            System.out.print("Teacher ID: ");
            int teacherId = sc.nextInt();
            sc.nextLine();

            teachers[i] = new Teacher(name, gender, address, age, empId, company, qualification, salary, subject, department, teacherId);
        }

        for (Teacher t : teachers) {
            t.display();
        }
    }
}




Output:


Enter number of teachers: 1

Enter details for Teacher 1
Name: Sara
Gender: Female
Address: Bangalore
Age: 30
Emp ID: 1001
Company: ABC School
Qualification: M.Sc B.Ed
Salary: 45000
Subject: Physics
Department: Science
Teacher ID: 501

--- Teacher Details ---
Teacher ID: 501
Name: Sara
Gender: Female
Address: Bangalore
Age: 30
Emp ID: 1001
Company: ABC School
Qualification: M.Sc B.Ed
Salary: 45000.0
Department: Science
Subject: Physics


Algorithm:
Step1: Define Person class with attributes name, gender, address, age.
Step2: Define Employee class extending Person, adding empId, company, qualification, salary.
Step3: Define Teacher class extending Employee, adding subject, department, teacherId.
Step4: Create display() method in Teacher class to print all details.
Step5: In main(), input number of teachers (n), create an array of Teacher objects.
Step6: Loop n times to get input for each teacher and store in the array.
Step7: Loop through array and call display() to print details.
