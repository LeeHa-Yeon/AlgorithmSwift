import Foundation

let inputValue = readLine()

if let inputString = inputValue {
    let array = inputString.components(separatedBy:" ")
    let first = Int(array[0])!
    let second = Int(array[1])!
    if first > second {
        print(">")
    } else if first < second {
        print("<")
    } else {
        print("==")
    }
}
