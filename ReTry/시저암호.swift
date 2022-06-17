func solution(_ s:String, _ n:Int) -> String {
    var answer: String = ""
    for c in s {
        if c == " " { 
            answer += " "
            continue 
        }
        var originValue = c.asciiValue!
        var changeValue = Int(originValue) + n
        if originValue > 64 && originValue < 91 {
            // 대문자 범위
            if changeValue > 90 {
                changeValue -= 26
            }
        }else {
            // 소문자 범위
            if changeValue > 122 {
                changeValue -= 26
            }
        }
        answer += String(UnicodeScalar(changeValue)!)
    }
    
    return answer
}
