import Foundation

func solution(_ arr:[Int]) -> Double {
    var total = arr.reduce(0,+)
    
    return Double(total)/Double(arr.count)
}

print(solution([1,2,3,4]))
