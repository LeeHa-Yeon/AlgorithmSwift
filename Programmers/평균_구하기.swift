import Foundation

func solution(_ arr:[Int]) -> Double {
    var total = arr.reduce(0, { $0 + $1})
    
    return Double(total)/Double(arr.count)
}
