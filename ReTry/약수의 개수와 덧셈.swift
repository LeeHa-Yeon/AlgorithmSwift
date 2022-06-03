import Foundation


func solution(_ left:Int, _ right:Int) -> Int {
    var sum = 0 
    for i in left...right {
        sum += divisor(i) % 2 == 0 ? i : -i
    }
    return sum
}

func divisor(_ num: Int) -> Int {
    var cnt = 0 
    for i in 1...num {
        if num % i == 0 { cnt += 1 }
    }
    return cnt
}
