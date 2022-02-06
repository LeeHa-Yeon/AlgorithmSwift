func solution(_ n:Int) -> Int {
    var sum = 0
    for i in 1..<n+1 {
        if n % i == 0 {
            sum += i
        }
    }
    return sum
    
}
