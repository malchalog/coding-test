n = int(input())

# 최대한 5kg 봉지를 많이 사용하면서 나머지를 3kg 봉지로 채운다
bags = 0
while n >= 0:
    if n % 5 == 0:  # 5의 배수로 나누어 떨어지면
        bags += n // 5  # 5kg 봉지의 수를 추가
        print(bags)
        break
    n -= 3  # 3kg 봉지를 사용하고 나머지를 5의 배수로 만듦
    bags += 1
else:
    print(-1)  # 정확히 나누어지지 않으면 -1 출력