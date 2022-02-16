import Foundation

func solution(_ n:Int) -> Int {
    let result = String(n, radix: 3)
    let resultReversed = result.reversed()
    let threeToTen = Int(String(resultReversed), radix: 3)!
    return threeToTen
}
