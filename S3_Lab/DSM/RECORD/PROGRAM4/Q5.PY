import pandas as pd
# Sample DataFrame
df = pd.DataFrame({
'Roll': [1, 2, 3, 4, 5, 6, 7],
'Name': ['A', 'B', 'C', 'D', 'E', 'F', 'G'],
'Marks': [78, 82, 90, 65, 85, 92, 70]
})
print("Head of the DataFrame:")
print(df.head())
print("\nTail of the DataFrame:")
print(df.tail())

# Algorithm

# 1.  Start.
# 2.  Import the Pandas library.
# 3.  Create a DataFrame with columns for 'Roll', 'Name', and 'Marks'.
# 4.  Print the first few rows of the DataFrame using the `.head()` method.
# 5.  Print the last few rows of the DataFrame using the `.tail()` method.
# 6.  End.