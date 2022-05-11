import Foundation

// 그냥 map 사용
func solution(_ n:Int64) -> [Int] {
    var nArr = String(n).map { Int(String($0))!}
    nArr.reverse()
    return nArr
}

// compactMap, hexDigitValue 사용
func solution(_ n:Int64) -> [Int] {
    var nArr = String(n).compactMap { $0.hexDigitValue }
    nArr.reverse()
    return nArr
}
