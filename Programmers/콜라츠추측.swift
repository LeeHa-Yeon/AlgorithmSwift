import Foundation

func solution(_ num:Int) -> Int {
    var n: Int = num
    var cnt: Int = 0
    var whileCnt: Int = 0
    while n != 1{
        whileCnt += 1
        cnt += 1
        if whileCnt >= 500 {
            return -1
        }
        if n % 2 == 0 {
            n = n / 2
        } else {
            n = n * 3 + 1
        }
    }
    return cnt
}

print(solution(626331))
