import Foundation

func solution(_ n:Int64) -> Int64 {
    return Int64(String(n).sorted{ $0 > $1 }.map { String($0) }.joined())!
}
