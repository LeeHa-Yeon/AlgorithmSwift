import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    
    let stages = stages.sorted(by: <)
    var failArr = Array(repeating: 0, count: N+2)
    var people = stages.count
    var tuple = [(Int, Double)]()
    var answer: [Int] = []
    
    for stage in stages {
        failArr[stage] += 1
    }
    
    // 각 스테이지마다의 실패율을 계산
    for i in 1...N {
        tuple.append((i,Double(people) != 0 ? Double(failArr[i]) / Double(people) : 0))
        people -= failArr[i]
    }
    
    // 정렬
    let sortedDic = tuple.sorted { 
        if $0.1 == $1.1 { return $0.0 < $1.0 }
        return $0.1 > $1.1
    }
    
    // 정렬한 키 값을 result에 넣기
    for i in sortedDic {
        answer.append(i.0)
    }
    
    return answer
}
