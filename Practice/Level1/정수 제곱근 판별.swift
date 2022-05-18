import Foundation

func solution(_ n:Int64) -> Int64 {
    var sqrtN = Int64(sqrt(Double(n)))
    return sqrtN * sqrtN == n ? (sqrtN+1) * (sqrtN+1) : -1
}
