import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])
var s: String = ""

for _ in 0...(b-1){
    s=""
    for _ in 0...(a-1){
        s+="*"
    }
    print(s)
}
