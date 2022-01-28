import Foundation

let inputNum = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (n, m) = (inputNum[0], inputNum[1])

var s: String = ""

for _ in 0...(m-1){
    s=""
    for _ in 0...(n-1){
        s+="*"
    }
    print(s)
}
