import Foundation

func solution(_ x:Int) -> Bool {
    let arr = String(x).map{ Int(String($0))! }
    var total: Int = 0
    
    for value in arr {
        total += value
    }
    
    if x%total == 0 {
        return true
    }
  
    return false
}

print(solution(15))
