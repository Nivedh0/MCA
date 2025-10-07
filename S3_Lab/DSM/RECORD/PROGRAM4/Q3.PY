import pandas as pd
# 2D List
data = [[101, 'A', 23],
[102, 'B', 25],
[103, 'C', 22]]
# Convert to DataFrame
df = pd.DataFrame(data, columns=['ID', 'Name', 'Age'])
print("2D List to DataFrame:")
print(df)

# Algorithm

# 1.  Start.
# 2.  Import the Pandas library.
# 3.  Create a 2D list where each inner list represents a row of data.
# 4.  Convert the 2D list into a Pandas DataFrame, assigning names to each column.
# 5.  Print the resulting DataFrame.
# 6.  End.