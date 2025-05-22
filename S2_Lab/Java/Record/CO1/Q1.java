Q)Define a class ‘product’ with data members pcode, pname and price. Create 3 objects of 
the class and find the product having the lowest price

code:

import java.util.Scanner;
class Product{
        int p_code;
        String p_name;
        int price;

        Product(){
            Scanner sc=new Scanner(System.in);
            System.out.print("Enter product code, name and price : ");
                p_code=sc.nextInt();
                p_name=sc.next();
                price=sc.nextInt();
        }

        public static void main(String[] args){


          Product p1=new Product();
          Product p2=new Product();
          Product p3=new Product();
          if(p1.price<p2.price &&  p1.price<p3.price){
                System.out.println(p1.p_name+" has the lowest price : "+p1.price);
          }
          else if(p2.price<p3.price){
                System.out.println(p2.p_name+" has the lowest price : "+p2.price);
          }
          else{
                System.out.println(p3.p_name+" has the lowest price : "+p3.price);
          }

     }
}

output:

Enter product code, name and price : 1024 item_A 2000
Enter product code, name and price : 1025 item_B 2200
Enter product code, name and price : 1026 item_C 3000
item_A has the lowest price : 2000

=== Code Execution Successful ===



Algorithm: Lowest Price Product
Step 1: Define class Product with variables: int p_code, String p_name, int price.
Step 2: In constructor, read p_code, p_name, and price using Scanner.
Step 3: Create three objects: p1, p2, p3.
Step 4: Compare p1.price, p2.price, and p3.price.
Step 5: Display p_name and price of the product with the lowest value.
