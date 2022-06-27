import Foundation

func solution(_ s:String) -> Int {
    let copyS = s
    var answer: [Int] = []
    var jump: Int = 1
    
    while jump <= copyS.count {
        var i = 0, j = jump
        var startIdx = copyS.index(copyS.startIndex, offsetBy: i)
        var endIdx = copyS.index(copyS.startIndex, offsetBy: j)
        var cnt = 1
        var result = String(copyS[startIdx..<endIdx])
        
        while j < copyS.count {
            let standard = copyS[startIdx..<endIdx]
            i = i + jump >= copyS.count ? copyS.count : i + jump
            j = j + jump >= copyS.count ? copyS.count : j + jump
            startIdx = copyS.index(copyS.startIndex, offsetBy: i)
            endIdx = copyS.index(copyS.startIndex, offsetBy: j)
            let comparison = copyS[startIdx..<endIdx]
            if standard == comparison {
                cnt += 1
                if j >= copyS.count {
                    result += cnt == 1 ? String(comparison) : "\(cnt)"
                }
            } else {
                result += cnt == 1 ? String(comparison) : "\(cnt)\(comparison)"
                cnt = 1
            }
        }
        answer.append(result.count)
        jump += 1
    }
     
    return answer.min()!
}


