class Solution {
    func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
        
        if trust.isEmpty { return n == 1 ? 1: -1 }
        
        var peopleArr = Array(repeating:0, count:n+1)
        var judge: Int = -1
        
        // 2번조건 : 마을 판사는 모든 마을 사람들이 신뢰해야됨
        for tArr in trust {
            peopleArr[tArr[1]]+=1
            if peopleArr[tArr[1]] == n-1 { judge = tArr[1] }
        }
        
        // 1번 조건 : 단, 마을 판사는 모든 사람들을 믿어선 안됨
        for tArr in trust {
            if tArr[0] == judge { return -1 }
        }
        
        return judge
        
    }
}
