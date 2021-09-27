import Foundation

func solution(_ n:Int64) -> Int64 {
    var elements = String(n).map { String($0) }
    
    var answer = elements.sorted(by: >)

    return Int64(answer.joined()) ?? 0
}

print(solution(118372))
