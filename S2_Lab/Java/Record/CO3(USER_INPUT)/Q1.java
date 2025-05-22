Q)Area of Different Shapes using overloaded Function

code:
import java.util.*;

class Area {
    double calculate(double radius) {
        return 3.14 * radius * radius; // Circle
    }

    double calculate(double length, double breadth) {
        return length * breadth; // Rectangle
    }

    double calculate(float base, float height) {
        return 0.5f * base * height; // Triangle
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Area a = new Area();

        System.out.print("Enter radius of circle: ");
        double r = sc.nextDouble();
        System.out.println("Area of Circle: " + a.calculate(r));

        System.out.print("Enter length and breadth of rectangle: ");
        double l = sc.nextDouble(), b = sc.nextDouble();
        System.out.println("Area of Rectangle: " + a.calculate(l, b));

        System.out.print("Enter base and height of triangle: ");
        float base = sc.nextFloat(), h = sc.nextFloat();
        System.out.println("Area of Triangle: " + a.calculate(base, h));
    }
}


Output:

Enter radius of circle: 3
Area of Circle: 28.26
Enter length and breadth of rectangle: 5 4
Area of Rectangle: 20.0
Enter base and height of triangle: 6 2
Area of Triangle: 6.0



Algorithm:

Step 1: Start
Step 2: Create a class Area with three methods named calculate:
    One takes radius (circle)
    One takes length and breadth (rectangle)
    One takes base and height (triangle)
Step 3: In the main method:
    Ask the user to enter radius, length & breadth, and base & height
    Call the appropriate calculate method for each shape
    Display the result
Step 4: End




