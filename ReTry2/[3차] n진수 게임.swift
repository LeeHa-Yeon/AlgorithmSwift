func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var speak: String = ""
    var order: Int = 0
    var answer: String = ""
    
    // 틀 만들기
    for i in 0...m*t {
        speak += String(i,radix:n).uppercased()
    }
    
    var speakArr = Array(speak).map{ String($0) }
    
    while answer.count < t {
        answer += speakArr[p+m*order - 1]
        order += 1
    }
    
    
    return answer
}
