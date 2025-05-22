Q)5. Create classes Student and Sports. Create another class Result inherited from Student and Sports. Display the academic and sports score of a student. 

Code:


class Student {
    String name;
    int rollNo;
    int academicScore;

    Student(String name, int rollNo, int academicScore) {
        this.name = name;
        this.rollNo = rollNo;
        this.academicScore = academicScore;
    }
}

class Sports {
    int sportsScore;

    Sports(int sportsScore) {
        this.sportsScore = sportsScore;
    }
}

class Result extends Student {
    int sportsScore;

    Result(String name, int rollNo, int academicScore, int sportsScore) {
        super(name, rollNo, academicScore);
        this.sportsScore = sportsScore;
    }

    void display() {
        System.out.println("Name: " + name + ", Roll No: " + rollNo + ", Academic Score: " + academicScore + ", Sports Score: " + sportsScore);
    }

    public static void main(String[] args) {
        Result r = new Result("Alice", 101, 88, 76);
        r.display();
    }
}





Output:

Name: Alice, Roll No: 101, Academic Score: 88, Sports Score: 76


Algorithm:
Step 1: Create a Student class with attributes: name, rollNo, and academicScore.
Step 2: Create a Sports class with the attribute sportsScore.
Step 3: Create a Result class that extends Student and adds sportsScore.
Step 4: Define constructors in Student, Sports, and Result to initialize their respective variables.
Step 5: Implement the display() method in Result to print the details.
Step 6: In the main method, create a Result object and display the details.