func solution(_ s:String) -> String {
    var answer = Array(s).map{ String($0) }.sorted{ $0 > $1 }
    return answer.joined()
}
