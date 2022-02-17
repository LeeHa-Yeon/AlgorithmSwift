import Foundation

func divisor(_ num: Int) -> Bool {
    var cnt = 0
    for i in 1...num {
        if num%i == 0 {
            cnt += 1
        }
    }
    return cnt % 2 == 0 ? true : false
}


func solution(_ left:Int, _ right:Int) -> Int {
    
    var sum = 0
    
    for num in left...right {
        if divisor(num) {
            // 짝수
            sum += num
        }else {
            // 홀수
            sum -= num
        }
    }
    return sum
}
