# 입력 받기
import sys
input = sys.stdin.read
data = input().split()
n = int(data[0])
meetings = []

for i in range(1, 2*n+1, 2):
    start = int(data[i])
    end = int(data[i+1])
    meetings.append((start, end))

# 회의를 끝나는 시간 기준으로 정렬
meetings.sort(key=lambda x: (x[1], x[0]))

# 회의 선택
count = 0
end_time = 0

for meeting in meetings:
    if meeting[0] >= end_time:
        count += 1
        end_time = meeting[1]

# 결과 출력
print(count)