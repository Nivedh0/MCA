Q)3. Create a class ‘Person’ with data members Name, Gender, Address, Age  and a constructor to initialize the data members and another class ‘Employee’ that inherits the properties of class Person and also contains its own data members like Empid, Company_name, Qualification, Salary and its own constructor. Create another class ‘Teacher’ that inherits the properties of class Employee and contains its own data members like Subject, Department, Teacherid and also contain constructors and methods to display the data members. Use array of objects to display details of N teachers. 



code:

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
    String companyName, qualification;
    double salary;

    Employee(String name, String gender, String address, int age, int empId, String companyName, String qualification, double salary) {
        super(name, gender, address, age);
        this.empId = empId;
        this.companyName = companyName;
        this.qualification = qualification;
        this.salary = salary;
    }
}

class Teacher extends Employee {
    String subject, department;
    int teacherId;

    Teacher(String name, String gender, String address, int age, int empId, String companyName, String qualification, double salary, String subject, String department, int teacherId) {
        super(name, gender, address, age, empId, companyName, qualification, salary);
        this.subject = subject;
        this.department = department;
        this.teacherId = teacherId;
    }

    void display() {
        System.out.println("Name: " + name + ", Gender: " + gender + ", Age: " + age + ", Address: " + address +
                           ", EmpId: " + empId + ", Company: " + companyName + ", Qualification: " + qualification + 
                           ", Salary: " + salary + ", Subject: " + subject + ", Department: " + department + ", TeacherId: " + teacherId);
    }

    public static void main(String[] args) {
        Teacher[] teachers = {
            new Teacher("Alice", "Female", "Kochi", 30, 1001, "ABC School", "MSc", 45000, "Java", "CS", 2001),
            new Teacher("Bob", "Male", "TVM", 35, 1002, "XYZ School", "MCA", 47000, "Python", "IT", 2002)
        };

        for (Teacher t : teachers) {
            t.display();
        }
    }
}




Output:


Name: Alice, Gender: Female, Age: 30, Address: Kochi, EmpId: 1001, Company: ABC School, Qualification: MSc, Salary: 45000.0, Subject: Java, Department: CS, TeacherId: 2001
Name: Bob, Gender: Male, Age: 35, Address: TVM, EmpId: 1002, Company: XYZ School, Qualification: MCA, Salary: 47000.0, Subject: Python, Department: IT, TeacherId: 2002
done

Algorithm:
Step 1: Create a Person class with name, gender, address, and age.
Step 2: Create an Employee class that extends Person, adding empId, companyName, qualification, and salary.
Step 3: Create a Teacher class that extends Employee, adding subject, department, and teacherId.
Step 4: Implement constructors in each class to initialize their respective variables.
Step 5: In Teacher, define a display() method to print all details.
Step 6: In main, create an array of Teacher objects with sample data and call display() for each.
Step 7: End.