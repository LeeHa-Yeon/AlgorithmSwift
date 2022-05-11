import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var usedMoney = 0
    for cnt in 1...count {
        usedMoney += (price * cnt )
    }
    
    return Int64(money < usedMoney ? usedMoney - money : 0)
}
