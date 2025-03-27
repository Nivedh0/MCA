vowels='AEIOUaeiou'
l=[]
w=input("enter the word")
count=0
for i in w:
    if i in vowels:
           count+=1
           l.append(i)
print("vowels in ",w,"is",count)
print(l)
