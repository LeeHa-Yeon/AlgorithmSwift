import Foundation

func solution(_ n:Int64) -> Int64 {
    var sqrtN = Int(sqrt(Double(n)))
    return Int64(sqrtN * sqrtN == n ? (sqrtN+1) * (sqrtN+1) : -1)
}
