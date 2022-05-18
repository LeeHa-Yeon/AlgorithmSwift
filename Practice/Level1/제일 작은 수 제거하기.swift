import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var arr = arr
    var target = arr.min()!
    var targetIdx = arr.index(of: target)!
    arr.remove(at: targetIdx)
    return arr.isEmpty ? [-1] : arr
    
}
