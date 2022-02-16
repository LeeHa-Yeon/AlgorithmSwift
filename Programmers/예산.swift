import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var sort_d = d.sorted(by: <)
    var sum = 0
    var cnt = 0
    
    for i in sort_d {
        sum += i
        if sum > budget {
            break
        } 
        cnt += 1
    }
    
    return cnt
}
