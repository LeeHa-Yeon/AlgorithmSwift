import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var newArr = arr.filter{ $0 != arr.min()! }
    return newArr == [] ? [-1] : newArr
}
