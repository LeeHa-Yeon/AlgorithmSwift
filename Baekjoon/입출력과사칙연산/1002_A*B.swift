import Foundation

let inputValue = readLine()

if let inputResult = inputValue {
    let array = inputResult.components(separatedBy: " ")
    let answer = Int(array[0])! * Int(array[1])!
    print(answer)
}
