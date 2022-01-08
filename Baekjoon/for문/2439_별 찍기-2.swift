import Foundation

let inputNum = Int(readLine()!)!

for i in 1...inputNum {
    for _ in 0..<inputNum-i {
        print(" ",terminator: "")
    }
    for _ in inputNum-i..<inputNum {
        print("*",terminator:"")
    }
    print(" ")
}
