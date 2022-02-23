import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var lottos = lottos
    var win_nums = win_nums
    var answer:[Int] = []
    
    
    // 당첨 가능한 최고순위, 최저 순위를 구한다.
    var highestCorrect = lottos.filter { $0 == 0 }.count
    var lowestCorrect = 0
    
    for lotto in lottos {
        if win_nums.contains(lotto) {
            highestCorrect += 1
            lowestCorrect += 1
        }
    }
    
    // 당첨내용에 맞춰 순위를 정한다.
    if highestCorrect >= 6 {
        answer.append(1)
    } else if highestCorrect <= 1 {
        answer.append(6)
    } else {
        answer.append(7-highestCorrect)
    }
    
    if lowestCorrect >= 6 {
        answer.append(1)
    } else if lowestCorrect <= 1 {
        answer.append(6)
    } else {
        answer.append(7-lowestCorrect)
    }
    
    
    return answer
}
