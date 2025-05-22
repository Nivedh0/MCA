Q) Write a program has class Publisher, Book, Literature and Fiction. Read the information and print the details of books from either the category, using inheritance. 


code:

class Publisher {
    String publisher;

    Publisher(String publisher) {
        this.publisher = publisher;
    }
}

class Book extends Publisher {
    String title;

    Book(String publisher, String title) {
        super(publisher);
        this.title = title;
    }
}

class Literature extends Book {
    Literature(String publisher, String title) {
        super(publisher, title);
    }

    void display() {
        System.out.println("Literature - Title: " + title + ", Publisher: " + publisher);
    }
}

class Fiction extends Book {
    Fiction(String publisher, String title) {
        super(publisher, title);
    }

    void display() {
        System.out.println("Fiction - Title: " + title + ", Publisher: " + publisher);
    }

    public static void main(String[] args) {
        Literature lit = new Literature("Penguin", "Hamlet");
        Fiction fic = new Fiction("HarperCollins", "Harry Potter");

        lit.display();
        fic.display();
    }
}

Output:

Literature - Title: Hamlet, Publisher: Penguin
Fiction - Title: Harry Potter, Publisher: HarperCollins


Algorithm:

step1: Define a class Publisher with a variable publisher and constructor to initialize it.
step2: Define a class Book that extends Publisher and adds a title variable with constructor.
step3: Create Literature class extending Book, with a display() method to print literature book details.
step4: Create Fiction class extending Book, with a display() method to print fiction book details.
step5: In main(), create one Literature and one Fiction object.
step6: Call display() methods for both objects to show their details.
