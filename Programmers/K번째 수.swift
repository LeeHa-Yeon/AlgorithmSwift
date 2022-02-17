import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var arr = ArraySlice<Int>()
    var sortArr = Array<Int>()
    var answer = Array<Int>()
    for command in commands {
        arr = array[command[0]-1...command[1]-1]
        sortArr = arr.sorted(by: <)
        answer.append(sortArr[command[2]-1])
    }
    return answer
}
