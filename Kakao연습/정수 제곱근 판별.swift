import Foundation

func solution(_ n:Int64) -> Int64 {
    var target = Int64(sqrt(Double(n)))
    return target * target == n ? (target+1) * (target+1) : Int64(-1)
}
