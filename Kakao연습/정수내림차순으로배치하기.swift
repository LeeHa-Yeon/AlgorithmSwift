import Foundation

func solution(_ n:Int64) -> Int64 {
    var sortedN = String(n).sorted(by: >)

    return Int64(sortedN.map{ String($0) }.joined())!
}
