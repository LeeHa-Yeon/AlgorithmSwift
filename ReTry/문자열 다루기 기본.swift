func solution(_ s:String) -> Bool {
    if s.count != 4 && s.count != 6 {
        return false
    }
    
    var answer: Bool = true
    answer = s.allSatisfy { $0.isNumber }
    return answer
}
