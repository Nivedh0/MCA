print("Select operation: 1.Addition, 2.Substraction, 3.multiplication, 4.Division, /")
ch = input("Enter choice: ")
num1 = float(input("Enter first number: "))
num2 = float(input("Enter second number: "))

if ch == '1':
    print("Result:", num1 + num2)
elif ch == '2':
    print("Result:", num1 - num2)
elif ch == '3':
    print("Result:", num1 * num2)
elif ch == '4':
    if num2 != 0:
        print("Result:", num1 / num2)
    else:
        print("Error: Division by zero!")
else:
    print("Invalid operator")

#algorithm

# 1.  Start.
# 2.  Display the operation choices (Add, Subtract, Multiply, Divide).
# 3.  Get input from the user for their choice and two numbers.
# 4.  Check the choice:
#     * If '1', add the numbers.
#     * If '2', subtract the numbers.
#     * If '3', multiply the numbers.
#     * If '4', check if the second number is zero. If not, divide. If it is, show a "division by zero" error.
#     Otherwise, show an "invalid choice" error.
# 5.  Print the result or error message.
# 6.  End.    