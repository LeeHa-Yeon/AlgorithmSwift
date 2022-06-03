import Foundation

func solution(_ n:Int) -> Int {
    var ternary: Array = String(n, radix: 3).map{ String($0) }
    ternary.reverse()
    let answer: Int = Int(ternary.joined(),radix: 3)!
    return answer

}
