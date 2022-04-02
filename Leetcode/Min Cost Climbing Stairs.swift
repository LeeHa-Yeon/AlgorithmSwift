class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var costCount: Int = cost.count
        var dp: [Int] = Array(repeating: 0, count: costCount)
        dp[0] = cost[0]
        dp[1] = cost[1]
        
        for i in 2..<costCount {
            dp[i] = min(dp[i-1],dp[i-2]) + cost[i]
        }
        
        return min(dp[costCount-1],dp[costCount-2])
    }
}
