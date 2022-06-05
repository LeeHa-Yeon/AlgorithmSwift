import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    
    let zeroCnt = lottos.filter { $0 == 0 }.count
    var match = win_nums.filter { lottos.contains($0) }.count
    var highRanking = 7 - (match + zeroCnt)
    var lowRanking = 7 - match

    
    return [min(highRanking,6),min(lowRanking,6)]
}
