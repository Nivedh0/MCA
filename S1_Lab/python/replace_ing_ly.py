s=input("enter string")
if s.endswith("ing"):
    a=s.replace("ing","ly")
else:
    a=s+"ing"
print(a)
