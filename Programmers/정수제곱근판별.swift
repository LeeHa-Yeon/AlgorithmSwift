import Foundation

func solution(_ n:Int64) -> Int64 {
    let number = sqrt(Double(n))
    var result: Int64 = 0
  
    if number == Double(Int64(number)) {
        result = Int64((number+1)*(number+1))
    }
    else{
        result = -1
    }
    return result
}
