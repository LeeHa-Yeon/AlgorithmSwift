import Foundation

func solution(_ dartResult:String) -> Int {
    var result: [Int] = [0,0,0]
    var current: String = ""
    var idx: Int = 0
    
    for c in dartResult {
        if c.isNumber {
            current += String(c)
        } else {
            switch c {
                case "S" :
                    result[idx] += Int(current)!
                case "D" :
                    result[idx] += Int(pow(Double(Int(current)!),2))
                case "T" :
                    result[idx] += Int(pow(Double(Int(current)!),3))
                case "*" :
                    idx -= 1
                    result[idx] *= 2
                    if idx != 0 { result[idx-1] *= 2}
                case "#" :
                    idx -= 1
                    result[idx] = -(result[idx])
                default :
                    break
            }
            idx += 1
            current = ""
        }
    }
    
    return result.reduce(0,+)
}
