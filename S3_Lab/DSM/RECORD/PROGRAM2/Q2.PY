import numpy as np

# Creating a matrix A
A = np.array([[3, 4, 3],
[1, 2, 3],
[4, 2, 1]])
print("Original Matrix A:\n", A)

# Performing SVD
U, D, VT = np.linalg.svd(A)
print("\nMatrix U:\n", U)
print("\nSingular Values D:\n", D)
print("\nMatrix VT:\n", VT)

# Creating a diagonal matrix from D
D_matrix = np.zeros((U.shape[0], VT.shape[0]))
np.fill_diagonal(D_matrix, D)

# Checking if we can remake the original matrix using U, D_matrix, VT
A_remake = (U @ D_matrix @ VT)
print("\nReconstructed Matrix (REMAKE):\n", A_remake)

#algorithm

# 1.  Start.
# 2.  Import the NumPy library.
# 3.  Create a 3x3 matrix `A`.
# 4.  Perform Singular Value Decomposition (SVD) on `A` to get `U`, singular values `D`, and `VT`.
# 5.  Convert the 1D array of singular values `D` into a proper diagonal matrix.
# 6.  Reconstruct the original matrix by multiplying `U`, the diagonal matrix of `D`, and `VT`.
# 7.  Print the original matrix, the SVD components, and the reconstructed matrix.
# 8.  End.

