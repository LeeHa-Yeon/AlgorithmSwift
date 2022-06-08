import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    let sortedA = A.sorted{ $0 > $1 }
    let sortedB = B.sorted{ $0 < $1 }
    var answer = 0
    
    for i in 0..<A.count {
        answer += sortedA[i] * sortedB[i]
    }
    
    return answer
}
