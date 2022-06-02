import Foundation

func solution(_ x:Int) -> Bool {
    var xSum = String(x).map { Int(String($0))! }.reduce(0,+)
    return x % xSum == 0 ? true : false
}
