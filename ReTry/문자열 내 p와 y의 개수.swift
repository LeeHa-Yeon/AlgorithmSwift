import Foundation

func solution(_ s:String) -> Bool
{
    var pCnt = s.filter { $0 == "p" || $0 == "P" }.count
    var yCnt = s.filter { $0 == "y" || $0  == "Y" }.count
    return pCnt == yCnt ? true : false
}
