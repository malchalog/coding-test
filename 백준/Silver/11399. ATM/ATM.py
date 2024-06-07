
n = int(input())
wating = list(map(int, input().split()))

wating.sort()

total_wating = 0
acc_waiting = 0
for i in wating : 
    acc_waiting += i
    total_wating += acc_waiting
    
print(total_wating)