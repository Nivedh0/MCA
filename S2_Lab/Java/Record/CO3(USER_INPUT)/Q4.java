Q) Write a program has class Publisher, Book, Literature and Fiction. Read the information and print the details of books from either the category, using inheritance.

code:

import java.util.*;

class Publisher {
    String name;

    Publisher(String name) {
        this.name = name;
    }
}

class Book extends Publisher {
    String title;

    Book(String name, String title) {
        super(name);
        this.title = title;
    }
}

class Literature extends Book {
    Literature(String name, String title) {
        super(name, title);
    }

    void display() {
        System.out.println("\n[ Literature Book ]");
        System.out.println("Title: " + title);
        System.out.println("Publisher: " + name);
    }
}

class Fiction extends Book {
    Fiction(String name, String title) {
        super(name, title);
    }

    void display() {
        System.out.println("\n[ Fiction Book ]");
        System.out.println("Title: " + title);
        System.out.println("Publisher: " + name);
    }
}

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        ArrayList<Literature> litBooks = new ArrayList<>();
        ArrayList<Fiction> ficBooks = new ArrayList<>();

        System.out.print("Enter number of books: ");
        int n = sc.nextInt();
        sc.nextLine();

        for (int i = 0; i < n; i++) {
            System.out.println("\nEnter book " + (i + 1) + " details:");
            System.out.print("Title: ");
            String title = sc.nextLine();
            System.out.print("Publisher: ");
            String pub = sc.nextLine();
            System.out.print("Category (literature/fiction): ");
            String cat = sc.nextLine().toLowerCase();

            if (cat.equals("literature"))
                litBooks.add(new Literature(pub, title));
            else if (cat.equals("fiction"))
                ficBooks.add(new Fiction(pub, title));
            else
                System.out.println("Invalid category. Skipped.");
        }

        System.out.println("\n--- Literature Books ---");
        for (Literature b : litBooks) b.display();

        System.out.println("\n--- Fiction Books ---");
        for (Fiction b : ficBooks) b.display();
    }
}


Output:

Enter number of books: 2

Enter book 1 details:
Title: Hamlet
Publisher: Penguin
Category (literature/fiction): literature

Enter book 2 details:
Title: Harry Potter
Publisher: Bloomsbury
Category (literature/fiction): fiction

--- Literature Books ---

[ Literature Book ]
Title: Hamlet
Publisher: Penguin

--- Fiction Books ---

[ Fiction Book ]
Title: Harry Potter
Publisher: Bloomsbury


Algorithm:

Step1: Define Publisher class with a name attribute.
Step2: Create Book class extending Publisher with title.
Step3: Create Literature and Fiction classes extending Book, each with a display() method.
Step4: In main(), create two array lists: one for Literature and one for Fiction.
Step5: Input number of books n.
Step6: Loop n times:
    Get title, publisher, and category.
    Create appropriate object (Literature or Fiction) based on category and add to respective list.
Step7: Print all literature books using their display() method.
Step8: Print all fiction books using their display() method.