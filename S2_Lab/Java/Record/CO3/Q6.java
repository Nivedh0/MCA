Q)create an interface having prototype of function area() and perimeter().create two classes circle and rectangle  which implements the above interface.create a menu driven program to find area and perimeter of object java program


code:

import java.util.Scanner;

interface Shape {
    double area();
    double perimeter();
}

class Circle implements Shape {
    private double radius;

    public Circle(double radius) {
        this.radius = radius;
    }

    public double area() {
        return Math.PI * radius * radius;
    }

    public double perimeter() {
        return 2 * Math.PI * radius;
    }
}

class Rectangle implements Shape {
    private double length;
    private double width;

    public Rectangle(double length, double width) {
        this.length = length;
        this.width = width;
    }

    public double area() {
        return length * width;
    }

    public double perimeter() {
        return 2 * (length + width);
    }
}

public class ShapeCalculator {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int choice;

        do {
            System.out.println("\nMenu:");
            System.out.println("1. Circle");
            System.out.println("2. Rectangle");
            System.out.println("3. Exit");
            System.out.print("Enter your choice: ");
            choice = scanner.nextInt();

            switch (choice) {
                case 1:
                    System.out.print("Enter radius: ");
                    double radius = scanner.nextDouble();
                    Circle circle = new Circle(radius);
                    System.out.println("Area: " + circle.area());
                    System.out.println("Perimeter: " + circle.perimeter());
                    break;

                case 2:
                    System.out.print("Enter length: ");
                    double length = scanner.nextDouble();
                    System.out.print("Enter width: ");
                    double width = scanner.nextDouble();
                    Rectangle rectangle = new Rectangle(length, width);
                    System.out.println("Area: " + rectangle.area());
                    System.out.println("Perimeter: " + rectangle.perimeter());
                    break;

                case 3:
                    System.out.println("Exiting.");
                    break;

                default:
                    System.out.println("Invalid choice.");
            }
        } while (choice != 3);

        scanner.close();
    }
}


Algorithm:
Step 1: Define the Shape interface with methods area() and perimeter().
Step 2: Create the Circle class:
    Implement Shape.
    Define radius and calculate area and perimeter.
Step 3: Create the Rectangle class: 
    Implement Shape.
    Define length and width, and calculate area and perimeter.
Step 4: In ShapeCalculator class:
    Display menu with options: 1. Circle, 2. Rectangle, 3. Exit.
    Take user input for the choice.
Step 5: For each choice:
    For Circle, input radius, create a Circle object, and display area and perimeter.
    For Rectangle, input length and width, create a Rectangle object, and display area and perimeter.
Step 6: Exit if user chooses option 3.
Step 7: Close the scanner after use.



output:


Menu:
1. Circle
2. Rectangle
3. Exit
Enter your choice: 1
Enter radius: 3
Area: 28.274333882308138
Perimeter: 18.84955592153876

Menu:
1. Circle
2. Rectangle
3. Exit
Enter your choice: 2
Enter length: 6
Enter width: 9
Area: 54.0
Perimeter: 30.0

Menu:
1. Circle
2. Rectangle
3. Exit
Enter your choice: 3
Exiting.
















