import matplotlib.pyplot as plt
import numpy as np

# Data
labels = ['G1', 'G2', 'G3', 'G4', 'G5']
men_scores = [22, 30, 35, 35, 26]
women_scores = [25, 32, 30, 35, 29]

x = np.arange(len(labels)) # the label locations
width = 0.35 # width of the bars

# Create bar plot
plt.bar(x - width/2, men_scores, width, label='Men')
plt.bar(x + width/2, women_scores, width, label='Women')

# Labels and title
plt.ylabel('Scores')
plt.title('Scores by group and gender')
plt.xticks(x, labels)
plt.legend()

plt.grid(True)

plt.show()

#algorithm

# 1.  Start.
# 2.  Import necessary libraries (`matplotlib` and `numpy`).
# 3.  Define the data: labels for the groups and score lists for 'Men' and 'Women'.
# 4.  Set up the x-axis positions for the groups and a width for the bars.
# 5.  Plot the bars for 'Men', shifting them slightly to the left.
# 6.  Plot the bars for 'Women', shifting them slightly to the right.
# 7.  Add a title, y-axis label, and custom x-axis tick labels.
# 8.  Display the legend and a background grid.
# 9.  Show the final plot.
# 10. End.