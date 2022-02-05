func solution(_ s:String) -> String {
    var answer: String = ""
    var strArr: [String] = []
    var orderIdx: Int = 0
    
    for i in s {
        if orderIdx % 2 == 0 {
            answer += String(i.uppercased())
        } else {
            answer += String(i.lowercased())
        }
        orderIdx += 1
        
        if i == " " {
            orderIdx = 0
        }
    }
    
    
    return answer
}
