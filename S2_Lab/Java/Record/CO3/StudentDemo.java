import java.util.Scanner;

// Interface with display() method
interface Display {
    void display();
}

// Student class implementing Display interface
class Student implements Display {
    private int studentId;
    private String name;
    private String branch;
    private String collegeName;

    // Constructor
    Student(int studentId, String name, String branch, String collegeName) {
        this.studentId = studentId;
        this.name = name;
        this.branch = branch;
        this.collegeName = collegeName;
    }

    // Implementation of display() from Display interface
    public void display() {
        System.out.println("Student ID: " + studentId);
        System.out.println("Name: " + name);
        System.out.println("Branch: " + branch);
        System.out.println("College Name: " + collegeName);
        System.out.println("---------------------------");
    }
}

// Main class
public class StudentDemo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Input number of students
        System.out.print("Enter number of students: ");
        int n = scanner.nextInt();
        scanner.nextLine(); // consume newline

        // Create array of Student objects
        Student[] students = new Student[n];

        // Input details for each student
        for (int i = 0; i < n; i++) {
            System.out.println("Enter details for student " + (i + 1) + ":");
            
            System.out.print("Student ID: ");
            int id = scanner.nextInt();
            scanner.nextLine(); // consume newline

            System.out.print("Name: ");
            String name = scanner.nextLine();

            System.out.print("Branch: ");
            String branch = scanner.nextLine();

            System.out.print("College Name: ");
            String collegeName = scanner.nextLine();

            students[i] = new Student(id, name, branch, collegeName);
        }

        // Display all student details
        System.out.println("\n--- Student Details ---");
        for (Student student : students) {
            student.display();
        }

        scanner.close();
    }
}