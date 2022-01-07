import Foundation

let inputValue = readLine()

if let inputResult = inputValue {
    let score = Int(inputResult) ?? 0
    if score > 89 && score <= 100 {
        print("A")
    } else if score > 79 && score < 90 {
        print("B")
    } else if score > 69 && score < 80 {
        print("C")
    } else if score > 59 && score < 70 {
        print("D")
    } else {
        print("F")
    }
}
