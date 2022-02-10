import Foundation

func solution(_ s:String) -> Bool
{
    var cnt: Int = 0
    let pArray = Array("pP")
    let yArray = Array("yY")
    
    for chr in s {
        if pArray.contains(chr) {
            cnt += 1
        } else if yArray.contains(chr) {
            cnt -= 1
        }
    }
    
    return cnt == 0 ? true : false
}
