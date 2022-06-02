func solution(_ n:Int) -> Int {
    var cnt: Int = 0 
    for target in 2...n { 
        cnt += isPrime(target) ? 1 : 0
    }
    return cnt
}

func isPrime(_ num: Int) -> Bool {
    for i in 2..<num {
        if num % i == 0 { return false}
    }
    return true
}
