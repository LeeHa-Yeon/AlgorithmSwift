import Foundation

let inputValue = readLine()
let inputValue2 = readLine()

if let inputResult = inputValue {
    if let inputResult2 = inputValue2 {
        var answer: [Int] = []
        let value2 = Array(inputResult2)
        for idx in value2.reversed() {
            answer.append(Int(inputResult)! * Int(String(idx))!)
        }
        answer.append(Int(inputResult)! * Int(inputResult2)!)
        
        for result in answer {
            print(result)
        }
    }
}
