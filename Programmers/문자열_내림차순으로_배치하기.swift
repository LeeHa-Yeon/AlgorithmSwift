func solution(_ s:String) -> String {
    var answer = ""
    for i in 0..<s.count {
        answer += String(s.sorted(by:>)[i])
    }
    
    return answer
}
