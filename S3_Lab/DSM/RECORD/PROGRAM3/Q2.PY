import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 100)
y1 = np.sin(x)
y2 = np.cos(x)

# Create 2 subplots in one row
plt.subplot(1, 2, 1)
plt.plot(x, y1, label='Sine')
plt.title("Sine Wave")

plt.subplot(1, 2, 2)
plt.plot(x, y2, label='Cosine', color='orange')
plt.title("Cosine Wave")

plt.tight_layout()
plt.show()


#algorithm

# 1.  Start.
# 2.  Import necessary libraries (`matplotlib` and `numpy`).
# 3.  Generate a sequence of 100 numbers from 0 to 10 for the x-axis.
# 4.  Calculate the sine and cosine of these numbers for the y-axes.
# 5.  Create a figure with a layout for two subplots (1 row, 2 columns).
# 6.  Select the first subplot area and plot the sine wave with a title.
# 7.  Select the second subplot area and plot the cosine wave with a title.
# 8.  Adjust the plot layout to prevent titles and labels from overlapping.
# 9.  Display the final figure containing both plots.
# 10. End.