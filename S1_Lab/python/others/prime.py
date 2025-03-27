list1=[1,2,5,8,10,11]
largest=max(list1)
f='prime'
index=list1.index(largest)
for i in range(2,largest):
    if largest%i==0:
        f='not prime'
print(f)
print("largest number",largest)
print("largest number index",index)
