Q)Area of Different Shapes using overloaded Function

code:
class Area {
    double calculate(double radius) {
        return 3.14 * radius * radius; // Circle
    }

    double calculate(double length, double breadth) {
        return length * breadth; // Rectangle
    }

    double calculate(float base, float height) {
        return 0.5 * base * height; // Triangle
    }

    public static void main(String[] args) {
        Area a = new Area();
        System.out.println("Area of Circle: " + a.calculate(5.0));
        System.out.println("Area of Rectangle: " + a.calculate(4.0, 6.0));
        System.out.println("Area of Triangle: " + a.calculate(3f, 4f));
    }
}



output:

Area of Circle: 78.5
Area of Rectangle: 24.0
Area of Triangle: 6.0


Algorithm:

Step 1: Create a class called Area.
Step 2: Write a method to calculate the area of a circle using radius.
Step 3: Write another method to calculate the area of a rectangle using length and breadth.
Step 4: Write another method to calculate the area of a triangle using base and height.
Step 5: In the main method, make an object of the Area class.
Step 6: Call the circle method and print the result.
Step 7: Call the rectangle method and print the result.
Step 8: Call the triangle method and print the result.
Step 9: End.