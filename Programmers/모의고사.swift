import Foundation

func solution(_ answers:[Int]) -> [Int] {
    // 비교를 하기 위해서 문자열 반복을 통해 answers 길이보다 길거나 같게 초기셋팅을 하기
    var hateMath1 = String(repeating: "12345", count: Int(answers.count/5 + 1))
    var hateMath2 = String(repeating: "21232425", count: Int(answers.count/8 + 1))
    var hateMath3 = String(repeating: "3311224455", count: Int(answers.count/10 + 1))
    var cntDic = [1:0,2:0,3:0]
    var maxValue: Int = -1
    var answer = Array<Int>()

    // answers 길이만큼 짜르기
    hateMath1 = String(hateMath1.prefix(answers.count))
    hateMath2 = String(hateMath2.prefix(answers.count))
    hateMath3 = String(hateMath3.prefix(answers.count))
    
    // answers의 값과 비교하여 일치하면 해당 cntArr의 값을 증가시키기
    for i in 0..<answers.count {
        let idx = hateMath1.index(hateMath1.startIndex, offsetBy:i)
        if Int(String(hateMath1[idx]))! == answers[i] {
            cntDic[1] = cntDic[1]! + 1
        }
        if Int(String(hateMath2[idx]))! == answers[i] {
            cntDic[2] = cntDic[2]! + 1
        }
        if Int(String(hateMath3[idx]))! == answers[i] {
            cntDic[3] = cntDic[3]! + 1
        }
    }
    // 가장 높은 점수 알아내기 : 1,2,3 수포자가 맞은 문제 갯수 중 최대값을 구해야됨
    maxValue = cntDic.values.max()!
    
    // cntArr의 value에 대해서 내림차순으로 정렬 ( 가장 높은 점수 순이니까 ), key에 대해서 오름차순 정렬
    let sortedCntDic = cntDic.sorted {
        if $0.1 == $1.1 {
            return $0.0 < $1.0
        }
        return $0.1 > $1.1 
    }
    
    // 정렬한 딕셔너리를 순회하면서 maxValue가 아닌 값을 차례대로 answer에 넣어준다.
    for i in sortedCntDic {
        if i.value == maxValue {
            answer.append(i.key)
        }
    }
    
    
    return answer
}
