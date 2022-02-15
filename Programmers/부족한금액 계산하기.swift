import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var totalPrice = 0
    var answer:Int64 = -1
    for i in 1...count {
        totalPrice += price*i
    }

    return totalPrice <= money ? Int64(0) : Int64(totalPrice-money)
}
