import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer: [[Int]] = []
    
    for col in 0..<arr1.count {
        var arr: [Int] = []
        for row in 0..<arr2[0].count { // 3
            var value: Int = 0
            for idx in 0..<arr2.count { // 2
                value += arr1[col][idx] * arr2[idx][row]
            }
            arr.append(value)
        }
        answer.append(arr)
    }
    
    return answer
}
