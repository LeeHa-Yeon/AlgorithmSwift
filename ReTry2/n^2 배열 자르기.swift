import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var answer: [Int] = []
    
    for location in Int(left)...Int(right) {
        let row = Int(location/n)
        let col = Int(location%n)
        if col <= row {
            answer.append(row+1)
        }else {
            answer.append(col+1)
        }
    }
    
    return answer
}
