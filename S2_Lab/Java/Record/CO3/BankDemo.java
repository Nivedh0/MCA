import java.util.Scanner;

// Define the Bank interface
interface Bank {
    String getBankName();
    String getBranchName();
    String getIFSCCode();
    void displayBankDetails();
}

// MyBank class implementing Bank interface
class MyBank implements Bank {
    private String bankName;
    private String branchName;
    private String ifscCode;

    // Constructor to initialize values from user input
    public MyBank(String bankName, String branchName, String ifscCode) {
        this.bankName = bankName;
        this.branchName = branchName;
        this.ifscCode = ifscCode;
    }

    // Implement interface methods
    public String getBankName() {
        return bankName;
    }

    public String getBranchName() {
        return branchName;
    }

    public String getIFSCCode() {
        return ifscCode;
    }

    public void displayBankDetails() {
        System.out.println("Bank Name: " + getBankName());
        System.out.println("Branch Name: " + getBranchName());
        System.out.println("IFSC Code: " + getIFSCCode());
    }
}

// Main class
public class BankDemo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Get user input
        System.out.print("Enter Bank Name: ");
        String bankName = scanner.nextLine();

        System.out.print("Enter Branch Name: ");
        String branchName = scanner.nextLine();

        System.out.print("Enter IFSC Code: ");
        String ifscCode = scanner.nextLine();

        // Create MyBank object
        MyBank myBank = new MyBank(bankName, branchName, ifscCode);

        // Display bank details
        System.out.println("\n--- Bank Details ---");
        myBank.displayBankDetails();

        scanner.close();
    }
}