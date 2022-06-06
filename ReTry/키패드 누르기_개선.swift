import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    let keyPad = ["1":(0,0),"2":(0,1),"3":(0,2),"4":(1,0),"5":(1,1),"6":(1,2),"7":(2,0),"8":(2,1),"9":(2,2),"*":(3,0),"0":(3,1),"#":(3,2)]
    var left = [(3,0)]
    var right = [(3,2)]
    var answer:String = ""
    
    for n in numbers {
        var nStr = String(n)
        switch nStr {
            case "1","4","7" :
                left = [keyPad[nStr]!]
                answer += "L"
            case "3","6","9" :
                right = [keyPad[nStr]!]
                answer += "R"
            default :
                let x = keyPad[nStr]!.0
                let y = keyPad[nStr]!.1
                if manhattan(x,y,right[0].0,right[0].1) > manhattan(x,y,left[0].0,left[0].1) {
                    left = [keyPad[nStr]!]
                    answer += "L"
                } else if manhattan(x,y,right[0].0,right[0].1) < manhattan(x,y,left[0].0,left[0].1) {
                    right = [keyPad[nStr]!]
                    answer += "R"
                } else {
                    if hand == "right" {
                        right = [keyPad[nStr]!]
                        answer += "R"
                    }else {
                        left = [keyPad[nStr]!]
                        answer += "L"
                    }
                }
        }
    }
    
    
    return answer
}

func manhattan(_ x1: Int, _ y1: Int, _ x2: Int, _ y2: Int) -> Int {
    return abs(x1-x2) + abs(y1-y2)
}
