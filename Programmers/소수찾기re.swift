import Foundation

func solution(_ n:Int) -> Int {
    
    
    var isPrime: [Bool] = Array(repeating: true, count: n+1)
    
    isPrime[0] = false
    isPrime[1] = false
    
    if n >= 4 {
        for i in 2...Int(sqrt(Double(n))) {
            for j in 2...n/i {
                isPrime[i * j] = false
            }
        }
    }
    
    return isPrime.filter { $0 == true }.count
}
