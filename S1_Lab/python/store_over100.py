list1=[]
list2=[]
a=int(input("enter number of elements in list:"))
for i in range(a):
    num=int(input("enter the number:"))
    list1.append(num)
for i in list1:
    if i>100:
        list2.append('over')
    else:
        list2.append(i)
#list3=[i for i in list1 if i>100]        
print("list",list1)
print(list2)
print(list3)  
