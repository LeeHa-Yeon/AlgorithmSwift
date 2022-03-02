import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    let sA = A.sorted(by: <)
    let sB = B.sorted(by: >)
    var sum: Int = 0 
    
    for idx in 0..<A.count {
        sum += sA[idx]*sB[idx]
    }


    return sum
}
