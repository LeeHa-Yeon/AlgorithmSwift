import Foundation

func solution(_ s:String) -> Int {
    var divisor: [Int] = []
    var answer: Int = s.count
    
    // 약수구하기 
    for i in 1...s.count { if s.count % i == 0 { divisor.append(i)} }
    
    // 해당 간격만큼 쪼개기
    for jump in divisor {
        // 1, 2, 4, 8
        var idx: Int = 0
        var splitList: [String] = []
        while s.count != jump*idx {
            let startIdx = s.index(s.startIndex, offsetBy: jump*idx)
            let endIdx = s.index(s.startIndex, offsetBy: jump*(idx+1))
            splitList.append(String(s[startIdx..<endIdx]))
            idx += 1
        }
        var result: String = ""
        var standard = splitList[0]
        var cnt: Int = 1
        for i in 1..<splitList.count {
            if splitList[i] == standard {
                cnt += 1
            }else {
                result += cnt == 1 ? "\(standard)" : "\(cnt)\(standard)"
                cnt = 1
                standard = splitList[i]
            }
        }
        result += cnt == 1 ? "\(standard)" : "\(cnt)\(standard)"
        print(result)
        print(splitList)
        answer = min(answer,result.count)
    }
    
    return answer
}
