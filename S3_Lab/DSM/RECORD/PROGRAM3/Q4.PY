import matplotlib.pyplot as plt

x = [0, 1, 2, 3, 4, 5]
y1 = [0, 1, 4, 9, 16, 25]
y2 = [0, 1, 2, 3, 4, 5]

# Plot multiple lines
plt.plot(x, y1, label='Squared', color='blue', marker='o')
plt.plot(x, y2, label='Linear', color='green', marker='s')

# Add labels and legend
plt.title("Multiple Lines on Same Plot")
plt.xlabel("X-axis")
plt.ylabel("Y-axis")
plt.legend()
plt.grid(True)

plt.show()

#algorithm


# 1.  Start.
# 2.  Import the `matplotlib` plotting library.
# 3.  Define one list for the x-axis values and two separate lists for the y-axis values of each line.
# 4.  Plot the first line on the graph with its label and style.
# 5.  Plot the second line on the same graph with its own label and style.
# 6.  Set the title, axis labels, and display the legend.
# 7.  Add a background grid for readability.
# 8.  Display the final plot showing both lines.
# 9.  End.