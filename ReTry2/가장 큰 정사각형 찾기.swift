import Foundation

func solution(_ board:[[Int]]) -> Int
{
    var dp:[[Int]] = Array(repeating: Array(repeating:0, count: board[0].count), count: board.count )
    var maxValue = 0
    if board.count == 1 && board[0][0] == 1 { return 1 }
    
    for i in 0..<board.count {
        for j in 0..<board[0].count {
            if (i == 0) || (j == 0) {
                dp[i][j] = board[i][j]
                continue
            }
            
            if board[i][j] == 0 {
                dp[i][j] = 0
                continue
            }else {
                dp[i][j] = min(dp[i-1][j], dp[i][j-1], dp[i-1][j-1]) + 1
                maxValue = max(maxValue,dp[i][j])
            }
        }
    }

    return maxValue * maxValue
}
