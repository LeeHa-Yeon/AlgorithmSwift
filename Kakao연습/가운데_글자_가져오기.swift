func solution(_ s:String) -> String {
    var midIdx = s.count / 2
    return s.count % 2 == 0 ? String(Array(s)[midIdx-1...midIdx]) : String(Array(s)[midIdx])
}
