import Foundation

func solution(_ n:Int64) -> [Int] {
    var answer = String(n).map { Int(String($0))! }
    answer.reverse()
    return answer
}
