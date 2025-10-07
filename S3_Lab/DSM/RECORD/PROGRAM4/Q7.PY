import pandas as pd
import numpy as np
# Create DataFrame with NaN values
df = pd.DataFrame({
'A': [10, np.nan, 30],
'B': [np.nan, 50, 60]
})
print("Original DataFrame with NaN:")
print(df)
# Replace NaN with 0
df_filled = df.fillna(0)
print("\nDataFrame after Replacing NaN with 0:")
print(df_filled)

# Algorithm


# 1.  Start.
# 2.  Import the Pandas and NumPy libraries.
# 3.  Create a DataFrame containing some missing values (`NaN`).
# 4.  Print the original DataFrame.
# 5.  Replace all `NaN` values in the DataFrame with `0`.
# 6.  Print the updated DataFrame.
# 7.  End.