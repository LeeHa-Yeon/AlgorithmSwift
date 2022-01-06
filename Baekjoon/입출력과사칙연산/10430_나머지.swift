import Foundation

let inputValue = readLine()

if let inputResult = inputValue {
    let array = inputResult.components(separatedBy: " ")
    let result1 = (Int(array[0])! + Int(array[1])! ) % Int(array[2])!
    let result2 = ((Int(array[0])! % Int(array[2])!) + (Int(array[1])! % Int(array[2])!)) % Int(array[2])!
    let result3 = (Int(array[0])! * Int(array[1])!) % Int(array[2])!
    let result4 = ((Int(array[0])! % Int(array[2])!) * (Int(array[1])! % Int(array[2])!)) % Int(array[2])!
    print("\(result1)\n\(result2)\n\(result3)\n\(result4)")
}
