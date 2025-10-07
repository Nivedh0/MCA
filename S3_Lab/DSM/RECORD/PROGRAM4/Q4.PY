#DataFrames

import pandas as pd

data = {
"calories": [420, 380, 390],
"duration": [50, 40, 45]
}
#load data into a DataFrame object:
df = pd.DataFrame(data)
print(df)

# Algorithm

# 1.  Start.
# 2.  Import the Pandas library.
# 3.  Create a dictionary where keys represent column names and values are lists of data for those columns.
# 4.  Convert the dictionary into a Pandas DataFrame.
# 5.  Print the DataFrame.
# 6.  End.