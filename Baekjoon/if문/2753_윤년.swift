import Foundation

let inputValue = readLine()

if let inputResult = inputValue {
    let year = Int(inputResult) ?? 0
    if year%4 == 0 && (year%400 == 0 || year%100 != 0){
        print("1")
    } else {
        print("0")
    }
}
