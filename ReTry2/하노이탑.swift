import Foundation

func solution(_ n:Int) -> [[Int]] {
    var answer: [[Int]] = []
    hanoi(n,1,3,2,&answer)
    return answer
}

func hanoi(_ n: Int,_ start: Int, _ end: Int, _ assist: Int, _ res: inout [[Int]]) {
    if n == 1 { 
        res.append([start,end])
        return 
    }
    hanoi(n-1,start,assist,end,&res)
    res.append([start,end])
    hanoi(n-1,assist,end,start,&res)
}
