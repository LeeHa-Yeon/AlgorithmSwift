func solution(_ s:String) -> String {
    var arr = s.components(separatedBy: " ")
    var answer: String = ""
    
    for (cnt,word) in arr.enumerated() { 
        for (idx,value) in word.enumerated() {
            answer += idx % 2 == 0 ? value.uppercased() : value.lowercased()
        }
        if cnt + 1 != arr.count { answer += " " }
    }
    
    return answer
}
