import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var supoza1 = Array(String(repeating:"12345",count: answers.count).prefix(answers.count)).map { Int(String($0))!}
    var supoza2 = Array(String(repeating:"21232425",count: answers.count).prefix(answers.count)).map { Int(String($0))!}
    var supoza3 = Array(String(repeating:"3311224455",count: answers.count).prefix(answers.count)).map { Int(String($0))!}
    
    var scoreArr: [Int] = [0,0,0]
    var result: [Int] = []
    
    
    // 맞힌 사람 카운트 더하기
    for (idx,value) in answers.enumerated() {
        if supoza1[idx] == value { scoreArr[0] += 1 }
        if supoza2[idx] == value { scoreArr[1] += 1 }
        if supoza3[idx] == value { scoreArr[2] += 1 }
    }
    
    // 가장 높은 점수 추출하여 해당 인덱스+1을 result에 담기
    for (idx,value) in scoreArr.enumerated() {
        if scoreArr.max()! == value { result.append(idx+1) }
    }
    
    return result.sorted(by: <)
}
