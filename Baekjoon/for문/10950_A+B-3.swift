import Foundation

let inputValue = Int(readLine()!)

for _ in 0..<inputValue! {
    let a = readLine()!
    let splitArr = a.components(separatedBy: " ")
    let A = Int(splitArr[0])!
    let B = Int(splitArr[1])!
    print(A+B)
}


/*
var number: Int = Int(readLine()!)!
var Integer: [Int] = []

for _ in 1...number{
    Integer = (readLine()!.split(separator: " ")).map{ Int($0)! }
    print(Integer[0] + Integer[1])
}

*/
