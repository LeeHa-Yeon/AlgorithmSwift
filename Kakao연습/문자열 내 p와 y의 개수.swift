import Foundation

func solution(_ s:String) -> Bool
{
    var pCnt = Array(s).compactMap { $0 == "p" || $0 == "P" }.filter { $0 == true }
    var yCnt = Array(s).compactMap { $0 == "y" || $0 == "Y" }.filter { $0 == true }
    return pCnt == yCnt ? true : false
}


import Foundation
 // 하나 안됬음
func solution(_ s:String) -> Bool
{
    var pCnt = Array(s).filter { $0 == "p" || $0 == "P" }.count
    var yCnt = Array(s).filter { $0 == "y" || $0 == "Y" }.count
    return pCnt == yCnt ? true : false
}

import Foundation
 // 통과
func solution(_ s:String) -> Bool
{
    var pCnt = s.filter { $0 == "p" || $0 == "P" }.count
    var yCnt = s.filter { $0 == "y" || $0 == "Y" }.count
    return pCnt == yCnt
}
