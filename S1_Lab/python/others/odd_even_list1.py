list1=[5,9,20,34]
list2=[]
list3=[]
for i in list1:
    if i%2==0:
        list2.append(i)
    else:
        list3.append(i)
print("even number:",list2)
print("odd number:",list3)
