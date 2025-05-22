7. Prepare bill with the given format using calculate method from interface. 
Order No    : 
Date        : 

Product Id  Name       Quantity   Unit Price  Total     
------------------------------------------------------------
101         A          2          25          50        
102         B          1          100         100       
------------------------------------------------------------
                                 Net. Amount 150


code:

interface Bill {
    int calculate();
}

class Product implements Bill {
    int productId;
    String name;
    int quantity;
    int unitPrice;

    Product(int id, String n, int q, int p) {
        productId = id;
        name = n;
        quantity = q;
        unitPrice = p;
    }

    public int calculate() {
        return quantity * unitPrice;
    }

    public void display() {
        System.out.printf("%-10d %-10s %-10d %-10d %-10d\n", productId, name, quantity, unitPrice, calculate());
    }
}

public class BillTest {
    public static void main(String[] args) {
        Product p1 = new Product(101, "A", 2, 25);
        Product p2 = new Product(102, "B", 1, 100);

        int netAmount = p1.calculate() + p2.calculate();

        System.out.println("Order No.    : 1234");
        System.out.println("Date         : 08-05-2025\n");
        System.out.println("Product Id  Name       Quantity   Unit Price Total");
        System.out.println("---------------------------------------------------");
        p1.display();
        p2.display();
        System.out.println("---------------------------------------------------");
        System.out.println("Net Amount: " + netAmount);
    }
}

output:


Order No    : 1234
Date        : 08-05-2025

Product Id  Name       Quantity   Unit Price  Total     
------------------------------------------------------------
101         A          2          25          50        
102         B          1          100         100       
------------------------------------------------------------
                                 Net. Amount 150






Algorithm:
Step 1: Define the Bill interface with a method calculate().
Step 2: Create the Product class:
    Implement the Bill interface.
    Define variables: productId, name, quantity, unitPrice.
    Implement the calculate() method to compute the total (quantity * unitPrice).
    Implement the display() method to print product details in a formatted manner.
Step 3: In the BillTest class:
    Display the order information (Order No, Date).
    Display product details with headers ("Product Id", "Name", "Quantity", "Unit Price", "Total").
Step 4: Create Product objects:
    For each product, input product information (id, name, quantity, unit price), and display using the display() method.
Step 5: Calculate the netAmount by adding up the totals of all products.
Step 6: Display the netAmount after all products are listed.
Step 7: End the program.