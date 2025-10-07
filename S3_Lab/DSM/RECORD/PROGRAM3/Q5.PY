import matplotlib.pyplot as plt

# Data
languages = ['Java', 'Python', 'PHP', 'JavaScript', 'C#', 'C++']
popularity = [22.2, 17.6, 8.8, 8, 7.7, 6.7]

# ------------------ Pie Chart ------------------
plt.figure(figsize=(10, 6))
plt.subplot(1, 3, 1)
plt.pie(popularity, labels=languages, autopct='%1.1f%%', startangle=140)
plt.title('Popularity - Pie Chart')

# ------------------ Scatter Plot ------------------
plt.subplot(1, 3, 2)
plt.scatter(languages, popularity, color='red', marker='o')
plt.title('Popularity - Scatter Plot')
plt.xticks(rotation=45)

# ------------------ Horizontal Bar Chart ------------------
plt.subplot(1, 3, 3)
plt.barh(languages, popularity, color='skyblue')
plt.title('Popularity - Bar Chart')
# plt.grid(True)

plt.tight_layout()

plt.show()


#algorithm

# 1.  Start.
# 2.  Import the `matplotlib` plotting library.
# 3.  Define the data: a list of programming languages and their corresponding popularity scores.
# 4.  Create a figure to hold three subplots arranged in a single row.
# 5.  In the first subplot:
#     * Create a pie chart showing the popularity distribution.
# 6.  In the second subplot:
#     * Create a scatter plot of the data.
# 7.  In the third subplot:
#     * Create a horizontal bar chart.
# 8.  Adjust the layout to ensure the plots don't overlap.
# 9.  Display the final figure containing all three charts.
# 10. End.