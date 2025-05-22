Q)Create classes Student and Sports. Create another class Result inherited from Student and Sports. Display the academic and sports score of a student.


code:

class Student {
    int academicScore;

    void setAcademicScore(int score) {
        academicScore = score;
    }

    void displayAcademic() {
        System.out.println("Academic Score: " + academicScore);
    }
}

interface Sports {
    void setSportsScore(int score);
    void displaySports();
}

class Result extends Student implements Sports {
    int sportsScore;

    public void setSportsScore(int score) {
        sportsScore = score;
    }

    public void displaySports() {
        System.out.println("Sports Score: " + sportsScore);
    }

    void displayResult() {
        displayAcademic();
        displaySports();
    }
}

public class Main {
    public static void main(String[] args) {
        Result r = new Result();
        r.setAcademicScore(85);
        r.setSportsScore(90);
        r.displayResult();
    }
}

Output:
Academic Score: 85
Sports Score: 90




Algorithm

step1: Define class Student with academicScore variable.
step2: Add methods to set and display academic score.
step3: Create Sports interface with methods to set and show sports score.
step4: Define class Result that extends Student and implements Sports.
step5: Add sportsScore variable and implement interface methods.
step6: Add method to display both scores in Result.
step7: In main(), create Result object.
step8: Call methods to set academic and sports scores.
step9: Call method to display final result.
