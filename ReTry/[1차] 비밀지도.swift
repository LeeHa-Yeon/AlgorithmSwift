func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    
    for idx in 0..<n {
        var tBinary1: String = String(arr1[idx],radix:2)
        var tBinary2: String = String(arr2[idx],radix:2)
        var result: String = ""
        while tBinary1.count != n { tBinary1 = "0" + tBinary1 }
        while tBinary2.count != n { tBinary2 = "0" + tBinary2 }
        
        for (t1,t2) in zip(tBinary1, tBinary2) {
            result += (t1 == "0" && t2 == "0" ) ? " " : "#"
        }
        
        answer.append(result)
    }
    
    
    return answer
}
