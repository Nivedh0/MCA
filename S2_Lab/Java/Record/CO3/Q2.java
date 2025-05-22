Q)2. Create a class ‘Employee’ with data members Empid, Name, Salary, Address and constructors to initialize the data members. Create another class ‘Teacher’ that inherit the properties of class employee and contain its own data members department, Subjects taught and constructors to initialize these data members and also include display function to display all the data members. Use array of objects to display details of N teachers. 

Code: 

class Employee {
    int empId;
    String name;
    double salary;
    String address;

    Employee(int empId, String name, double salary, String address) {
        this.empId = empId;
        this.name = name;
        this.salary = salary;
        this.address = address;
    }
}

class Teacher extends Employee {
    String department;
    String subject;

    Teacher(int empId, String name, double salary, String address, String department, String subject) {
        super(empId, name, salary, address);
        this.department = department;
        this.subject = subject;
    }

    void display() {
        System.out.println("ID: " + empId + ", Name: " + name + ", Salary: " + salary + ", Address: " + address + ", Department: " + department + ", Subject: " + subject);
    }

    public static void main(String[] args) {
        Teacher[] teachers = {
            new Teacher(1, "Alice", 40000, "Kochi", "CS", "Java"),
            new Teacher(2, "Bob", 45000, "TVM", "IT", "Python")
        };

        for (Teacher t : teachers) {
            t.display();
        }
    }
}

Output:
ID: 1, Name: Alice, Salary: 40000.0, Address: Kochi, Department: CS, Subject: Java
ID: 2, Name: Bob, Salary: 45000.0, Address: TVM, Department: IT, Subject: Python

Algorithm:
Step 1: Create a class Employee with variables: empId, name, salary, and address.
Step 2: Create a constructor in Employee to initialize all its variables.
Step 3: Create a subclass Teacher that extends Employee.
Step 4: Add extra variables in Teacher: department and subject.
Step 5: Create a constructor in Teacher to initialize both employee and teacher details using super().
Step 6: Write a display() method in Teacher to print all details.
Step 7: In the main method, create an array of Teacher objects with sample data.
Step 8: Use a loop to call the display() method for each teacher.
Step 9: End.