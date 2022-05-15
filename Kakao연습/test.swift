from collections import defaultdict
def solution(n, results):
    win = defaultdict(set)
    lose = defaultdict(set)
    answer = 0

    for result in results :
        win[result[0]].add(result[1])
        lose[result[1]].add(result[0])

    for i in range(1,n+1) :
        # 힘의 우열로 인해 i를 이긴 사람들은 i가 이긴 사람들 또한 이김
        for winner in lose[i] :
            win[winner].update(win[i])
        # 힘의 우열로 인해 i가 이긴 사람들에게 모두 짐
        for loser in win[i] :
            lose[loser].update(lose[i])
    for i in range(1, n + 1):
        if len(win[i] | lose[i]) == n - 1:
            answer += 1
    return answer
