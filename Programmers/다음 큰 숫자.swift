import Foundation

func solution(_ n:Int) -> Int
{
    var standard: Int = n
    let nBinary: String = String(standard, radix: 2)
    var nextNum : Int = n+1
    var nextBinary: String = String(nextNum, radix: 2)

    while nBinary.filter{ $0 == "1" }.count != nextBinary.filter{ $0 == "1" }.count {
        nextNum += 1
        nextBinary =  String(nextNum, radix: 2)
    }
    
    return nextNum
}
