n = int(input())
bag = 0 # 출력할 주머니

while n >= 0 :
    if n % 5 == 0 :
        bag += n // 5 
        print(bag)
        break
    n -= 3
    bag += 1

else :
    print(-1)