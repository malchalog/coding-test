a,b,c = map(int,input().split())
a,b,c <=6 and a,b,c >=1
if a==b and b==c and a==c : 
   print (10000 + (1000*a))
else :
    if a==b :
       print (1000+100*a)
    elif b==c:
       print (1000+100*b)
    elif a==c:
       print(1000+100*a)
    else :
       print((max(a,b,c))*100)