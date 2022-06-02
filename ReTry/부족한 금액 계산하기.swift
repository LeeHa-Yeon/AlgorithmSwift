import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var total: Int = 0
    for i in 1...count {
        total += price * i
    }
    
    return Int64(money-total > 0 ? 0 : total-money)
}
