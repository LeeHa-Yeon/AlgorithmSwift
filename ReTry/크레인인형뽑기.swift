import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var board = board
    var stack: [Int] = []
    var answer: Int = 0
    
    for move in moves {
        for i in 0..<board.count {
            if board[i][move-1] != 0 {
                stack.append(board[i][move-1])
                board[i][move-1] = 0
                break
            }
        }
        
        if stack.count >= 2 && (stack[stack.count-2] == stack[stack.count-1]) {
            answer += 2
            stack = Array(stack.prefix(stack.count-2))
        }
    }
    
    return answer
}
