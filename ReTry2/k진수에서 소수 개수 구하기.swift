import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    var nBinary: String = String(n,radix: k)
    var result = nBinary.components(separatedBy: "0").filter { $0 != "1" && $0 != "" }
    var answer: Int = 0
    
    for num in result {
        if isPrime(Int(num)!) { answer += 1}
    }
    
    return answer
}

func isPrime(_ num: Int) -> Bool {
    if num < 4 { return (num == 1) ? false : true }
    for i in 2...Int(sqrt(Double(num))) {
        if num % i == 0 { return false }
    }
    return true
}
