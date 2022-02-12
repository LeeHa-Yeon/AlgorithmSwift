func solution(_ s:String) -> String {
    let idx = s.count/2
    return s.count % 2 == 0 ? String(Array(s)[idx-1...idx]) : String(Array(s)[idx])
}
