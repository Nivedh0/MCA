word=input().split()
temp=len(word[0])
w=word[0]
for i in word:
    if temp<len(i):
        temp=len(i)
        w=i
print("count:",temp," "+"longest word:",w)
