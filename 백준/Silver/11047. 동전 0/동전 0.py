# 입력 받기
n, k = map(int, input().split())
coins = [int(input()) for _ in range(n)]

# 동전을 내림차순으로 정렬
coins.sort(reverse=True)

# 필요한 동전 개수 계산
count = 0
for coin in coins:
    if k == 0:
        break
    count += k // coin
    k %= coin

# 결과 출력
print(count)