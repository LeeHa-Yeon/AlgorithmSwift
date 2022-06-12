import Foundation

func solution(_ n:Int) -> Int
{
    let binaryCnt = String(n,radix:2).filter { $0 == "1" }.count
    var nextN = n
    var nextNCnt = -1
    
    while binaryCnt != nextNCnt {
        nextN += 1
        nextNCnt = String(nextN,radix:2).filter { $0 == "1" }.count
    }
    
    
    return nextN
}
