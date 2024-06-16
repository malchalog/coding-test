import sys
input = sys.stdin.read

def main():
    data = input().split()
    n = int(data[0])
    
    meetings = []
    for i in range(1, len(data), 2):
        start_time = int(data[i])
        end_time = int(data[i + 1])
        meetings.append((start_time, end_time))
    
    # 끝나는 시간 기준으로 정렬, 끝나는 시간이 같으면 시작 시간 기준으로 정렬
    meetings.sort(key=lambda x: (x[1], x[0]))
    
    # 회의실을 사용할 수 있는 최대 회의 개수 계산
    count = 0
    end_time = 0
    
    for start, end in meetings:
        if start >= end_time:
            end_time = end
            count += 1
    
    # 결과 출력
    print(count)

if __name__ == '__main__':
    main()