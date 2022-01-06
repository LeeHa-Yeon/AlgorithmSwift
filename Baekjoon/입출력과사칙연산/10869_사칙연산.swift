import Foundation

let inputValue = readLine()

if let inputResult = inputValue {
    let array = inputResult.components(separatedBy: " ")
    let hap = Int(array[0])! + Int(array[1])!
    let minus = Int(array[0])! - Int(array[1])!
    let multiplication = Int(array[0])! * Int(array[1])!
    let division = Int(array[0])! / Int(array[1])!
    let remainder = Int(array[0])! % Int(array[1])!
    print("\(hap)\n\(minus)\n\(multiplication)\n\(division)\n\(remainder)")
}
