a = [1, 2, 3]
print("Original List:", a)

a.append(4)
print("After Append:", a)

a.insert(1, 10)
print("After Insert at index 1:", a)

del a[2]
print("After Deleting element at index 2:", a)

a.remove(10)
print("After Removing 10:", a)

copied_list = a.copy()
print("Copied List:", copied_list)

# algorithm

# 1.  Start.
# 2.  Initialize a list `a` with values `[1, 2, 3]` and print it.
# 3.  Append `4` to the end of the list and print the result.
# 4.  Insert `10` at index `1` of the list and print the result.
# 5.  Delete the element at index `2` and print the result.
# 6.  Remove the first occurrence of the value `10` and print the result.
# 7.  Copy the current list into a new variable and print the copy.
# 8.  End.