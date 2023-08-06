A, B = map(int, input().split())
C = int(input())

A += C // 60
B += C % 60

if B>=60:
    A += 1
    print(A%24, B-60)
else:
    print(A%24, B)