func solution(_ s:String) -> String {
    var sArr = s.components(separatedBy: " ")

    for (idx,value) in sArr.enumerated() {
        
        if value.count == 0 {
            continue
        }else {
            let first = value[value.startIndex].uppercased()
            let secondIdx = value.index(after:value.startIndex)
            let remain = value[secondIdx..<value.endIndex].lowercased()
            sArr[idx] = first+remain
        }
    }
    return sArr.joined(separator: " ")
}
