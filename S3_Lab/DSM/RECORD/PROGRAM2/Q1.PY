
#matrix Operation
import numpy as np
print("Matrix Operation")
a=np.array([[2,4],
[6,3]])
b=np.array([[1,2],
[3,5]])
# Vectorized addition
c=a+b
d=a-b
e=a*b
f=np.dot(a,b)
a_transpose=a.T
print("\nMatrix A:\n",a)
print("\nMatrix B:\n",b)
print("\nAddition:\n",c)
print("\nSubstraction:\n",d)
print("\nMultiplication (Element-wise):\n",e)
print("\nMultiplication (Row x Column):\n",f)

print("\nTranspose:\n",a_transpose)


# algorithm

# 1.  Start.
# 2.  Import the NumPy library.
# 3.  Define two 2x2 matrices, `a` and `b`.
# 4.  Calculate the following:
#      Element-wise addition (`a + b`).
#      Element-wise subtraction (`a - b`).
#      Element-wise multiplication (`a  b`).
#      Dot product (matrix multiplication) of `a` and `b`.
#      Transpose of matrix `a`.
# 5.  Print the original matrices and the results of each calculation.
# 6.  End.
