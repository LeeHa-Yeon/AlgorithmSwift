import Foundation

func solution(_ arr:[Int]) -> [Int] {
    let arrMin = arr.min()!
    var result: [Int]?

    result = arr.filter{ $0 != arrMin }
    
    if result == [] {
        return [-1]
    }
    
    return result!
}

print(solution([10]))
