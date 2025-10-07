a = float(input("Enter first number: "))
b = float(input("Enter second number: "))
c = float(input("Enter third number: "))

if a >= b and a >= c:
    largest = a
elif b >= a and b >= c:
    largest = b
else:
    largest = c

print("The largest number is:", largest)

# algorithm

# 1.  Start.
# 2.  Input three numbers from the user (`a`, `b`, `c`).
# 3.  Compare:
#      If `a` is greater than or equal to both `b` and `c`, then `a` is the largest.
#      Else if `b` is greater than or equal to both `a` and `c`, then `b` is the largest.
#      Otherwise, `c` is the largest.
# 4.  Print the largest number found.
# 5.  End.