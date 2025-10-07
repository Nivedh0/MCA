import matplotlib.pyplot as plt

# Coordinates
x = [1, 2, 6, 18]
y = [3, 10, 12, 20]

# Plotting dotted line with red points
plt.plot(x, y, 'r:o') # red color, dot marker, dotted line

plt.title("Dotted Line Between Points")
plt.xlabel("X-axis")
plt.ylabel("Y-axis")

# Show plot
plt.grid(True)
plt.show()

#algorithm

# 1.  Start.
# 2.  Import the `matplotlib` plotting library.
# 3.  Define two lists of numbers for the X and Y coordinates.
# 4.  Plot the coordinates using a red, dotted line with circle markers.
# 5.  Set the title and axis labels for the plot.
# 6.  Add a grid to the plot's background.
# 7.  Display the final plot.
# 8.  End.