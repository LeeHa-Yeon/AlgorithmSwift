import Foundation

let inputNum = Int(readLine()!)!

for i in 0..<inputNum {
    let Integer = (readLine()!.split(separator:" ")).map{ Int($0)!}
    print("Case #\(i+1): \(Integer[0]+Integer[1])")
}
