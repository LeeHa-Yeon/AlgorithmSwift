import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var arr = arr
    let minValue = arr.min()!
    let minIndex = arr.firstIndex(of: minValue)!
    arr.remove(at: minIndex)
    
    return arr.isEmpty ? [-1] : arr
}
