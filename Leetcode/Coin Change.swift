class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        if amount == 0 { return 0 }
        let sortedCoins = coins.sorted(by: <)
        
        var dp = Array(repeating: -1, count: amount+1 )
        dp[0] = 0
        
        for i in 1...amount {
            for coin in sortedCoins {
                // 비교할 i보다 coin이 크다면 돌릴 필요 없으니 break
                if coin > i { break }
                if dp[i - coin] == -1 { continue }
                
                dp[i] = dp[i] == -1 ? dp[i - coin] + 1 : min(dp[i - coin] + 1, dp[i])  
            }
        }
        
        return dp[amount]
    }

}
