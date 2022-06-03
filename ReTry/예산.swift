import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var answer: Int = 0
    var budget = budget
    
    for element in d.sorted() {
        budget = budget - element
        answer += budget >= 0 ? 1 : 0
    }
    
    return answer
    
}
