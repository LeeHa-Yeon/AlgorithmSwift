import Foundation

func solution(_ n:Int64) -> [Int] {
    var result = String(n).compactMap{ $0.hexDigitValue}
    result.reverse()
    return result
}

print(solution(12345))
