
// 시간초과 : 1번 테케
import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var newArr = arr.filter{ $0 != arr.min()! }
    return newArr == [] ? [-1] : newArr
}

// 모두 통과
import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var arr = arr
    var minValue = arr.min()!
    var findIdx = arr.index(of: minValue)!
    arr.remove(at: findIdx)
    
    return arr == [] ? [-1] : arr
}
