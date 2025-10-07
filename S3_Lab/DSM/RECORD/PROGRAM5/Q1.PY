import numpy as np
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split
from sklearn.neighbors import KNeighborsClassifier
from sklearn.metrics import accuracy_score
# df=pd.read_csv ('data.csv')
data = load_iris()
X = data.data
y= data.target
X_train,X_test,y_train,y_test = train_test_split(X,y,test_size=0.2,random_state=42)
# k=3
knn = KNeighborsClassifier(n_neighbors=3)
knn.fit(X_train,y_train)
y_pred = knn.predict(X_test)
accuracy = accuracy_score(y_test,y_pred)
print(f'Accuracy of k-NN with k={k}:{accuracy:.2f}')


#Algorithm


# 1.  Start.
# 2.  Import the necessary machine learning libraries and the Iris dataset.
# 3.  Load the dataset and split it into features (`X`) and the target variable (`y`).
# 4.  Divide the data into separate training and testing sets.
# 5.  Initialize the k-Nearest Neighbors (k-NN) classifier model, setting `k` to 3.
# 6.  Train the model using the training data.
# 7.  Make predictions on the unseen test data.
# 8.  Calculate the model's accuracy by comparing its predictions to the actual test labels.
# 9.  Print the final accuracy score.
# 10. End.