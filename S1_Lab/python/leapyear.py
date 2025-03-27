x=int(input("enter a year"))
for i in range(2024,x):
        if(i%4==0 or i%400==0 and i%100!=0):
            print("it is leap year",i)
else:
    print("over")
