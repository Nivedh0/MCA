import pandas as pd

# Sample DataFrame
df = pd.DataFrame({
'ID': [1, 2, 3, 4],
'Name': ['A', 'B', 'C', 'D'],
'Age': [20, 21, 19, 22]
})
# Select 2 rows by index
selected_rows = df.iloc[[1, 3]] # selecting 2nd and 4th rows
print("Selected Rows:")
print(selected_rows)

# Algorithm

# 1.  Start.
# 2.  Import the Pandas library.
# 3.  Create a DataFrame with 'ID', 'Name', and 'Age' columns.
# 4.  Select specific rows from the DataFrame using their integer index positions (e.g., the 2nd and 4th rows).
# 5.  Print the selected rows.
# 6.  End.