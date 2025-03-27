list1=[]
new_list=[]
for i in range(5):
    name=input("enter the name:")
    list1.append(name)
print(list1)
for i in list1:
   if i.startswith('a') or i.startswith('A'):
       new_list.append(i)
names=[name for name in list1 if not (name.startswith('a') or name.startswith('A'))]
print("names startwith 'A'",new_list)
print("names removed ",names)
