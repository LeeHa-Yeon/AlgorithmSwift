import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    let keyPad = [["1","2","3"],["4","5","6"],["7","8","9"],["*","0","#"]]
    var lArr:[Int] = [3,0]
    var rArr:[Int] = [3,2]
    var answer:String = ""
    
    for number in numbers {
        var numberStr = String(number)
        for x in 0..<keyPad.count {
            for y in 0..<keyPad[0].count {
                if numberStr == keyPad[x][y] {
                    if numberStr == "1" || numberStr == "4" || numberStr == "7" {
                        lArr = [x,y]
                        answer += "L"
                    } else if numberStr == "3" || numberStr == "6" || numberStr == "9" {
                        rArr = [x,y]
                        answer += "R"
                    } else {
                        if manhattan(x,y,rArr[0],rArr[1]) > manhattan(x,y,lArr[0],lArr[1]) {
                            lArr = [x,y]
                            answer += "L"
                        } else if manhattan(x,y,rArr[0],rArr[1]) < manhattan(x,y,lArr[0],lArr[1]) {
                            rArr = [x,y]
                            answer += "R"
                        } else {
                            if hand == "right" {
                                rArr = [x,y]
                                answer += "R"
                            }else {
                                lArr = [x,y]
                                answer += "L"
                            }
                        }
                    }
                }
            }
        }
    }
    
    
    return answer
}

func manhattan(_ x1: Int, _ y1: Int, _ x2: Int, _ y2: Int) -> Int {
    return abs(x1-x2) + abs(y1-y2)
}
