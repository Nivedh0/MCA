Q) Create classes Student and Sports. Create another class Result inherited from Student and Sports. Display the academic and sports score of a student. 



code:

import java.util.*;

class Student {
    int roll;
    String name;
    double marks;

    void getAcademicDetails(Scanner sc) {
        System.out.print("Enter Roll No: ");
        roll = sc.nextInt();
        sc.nextLine();
        System.out.print("Enter Name: ");
        name = sc.nextLine();
        System.out.print("Enter Academic Marks: ");
        marks = sc.nextDouble();
    }
}

interface Sports {
    double sportMarks = 50; // default sport marks
    void displaySports();
}

class Result extends Student implements Sports {
    public void displaySports() {
        System.out.println("Sports Marks: " + sportMarks);
    }

    void displayResult() {
        System.out.println("\n--- Student Result ---");
        System.out.println("Name: " + name);
        System.out.println("Roll No: " + roll);
        System.out.println("Academic Marks: " + marks);
        displaySports();
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Result r = new Result();
        r.getAcademicDetails(sc);
        r.displayResult();
    }
}



Output:


Enter Roll No: 101
Enter Name: Riya
Enter Academic Marks: 88

--- Student Result ---
Name: Riya
Roll No: 101
Academic Marks: 88.0
Sports Marks: 50.0


Algorithm:

step1: Define class Student with data members: roll number, name, and academic marks.
step2: Define method getAcademicDetails() to read student details from the user.
step3: Define interface Sports with a constant sportMarks and method displaySports().
step4: Create class Result that extends Student and implements Sports.
step5: In Result, define displaySports() to print sports marks.
step6: Define displayResult() to show all student details including sports.
step7: In main(), create Result object, call getAcademicDetails(), and display result.