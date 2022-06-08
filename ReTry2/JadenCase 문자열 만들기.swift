func solution(_ s:String) -> String {
    var splitS = s.components(separatedBy: " ")
    var answer = ""
    
    for word in splitS {
        if word == "" { answer += " " }
        else {
            let first = word.uppercased().prefix(1)
            let second = word.lowercased().suffix(word.count-1)
            answer += first + second + " "
        }
    }
    
    return String(answer.prefix(answer.count-1))
}
