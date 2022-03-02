func solution(_ s:String) -> String {
    var sArr = s.components(separatedBy: " ").map{ Int($0)! }.sorted(by: <)
    var result: String = ""
    
    result += String(sArr[0])
    result += " "
    result += String(sArr[sArr.count-1])
    
    return result
}
