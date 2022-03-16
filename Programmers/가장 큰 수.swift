import Foundation

func solution(_ numbers:[Int]) -> String {
    let sortedNumbers = numbers.sorted {
        return Int("\($0)\($1)")! > Int("\($1)\($0)")!
    }
    
    var answer = sortedNumbers.map { String($0) }.joined()
    
    while answer.count > 1 && answer.first! == "0" {
        answer.removeFirst()
    }
    
    return answer
}
