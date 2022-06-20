import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var answer: [Int] = []
    
    for location in Int(left)...Int(right) {
        let row = Int(location/n) // 나누기 -> 행
        let col = Int(location%n) // 나머지 -> 열
        if col <= row {
            // 열 <= 행 -> 해당 값은 행 + 1
            answer.append(row+1)
        }else {
            // 행 < 열 -> 해당 값은 열 + 1
            answer.append(col+1)
        }
    }
    
    return answer
}
