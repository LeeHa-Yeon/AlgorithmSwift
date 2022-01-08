import Foundation

let inputNum = Int(readLine()!)!

for i in 1...inputNum {
    for j in 1...i {
        print("*",terminator: "")
    }
    print(" ")
}
