import math
a=[]
x=0
y=0
for i in range(0,4):
    a.append(input().split(" "))
for i in a:
    i[1]=int(i[1])
    if i[0]=="up":
        y=y+i[1]
    elif i[0]=="down":
        y=y-i[1]
    elif i[0]=="right":
        x=x+i[1]
    elif i[0]=="left":
        x=x-i[1]
x=abs(x)
y=abs(y)
z=math.sqrt((x**2)+(y**2))
print(round(z))
