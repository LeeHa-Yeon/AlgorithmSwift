import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var tuple = [(Int, Double)]()
    let stages = stages.sorted(by: <)
    var people = stages.count
    var answer: [Int] = []
    
    // 각 스테이지마다의 실패율을 계산
    for i in 1...N {
        var failer: Int = 0
        for stage in stages {
            if stage == i { failer += 1 }
        }
        
        tuple.append((i,Double(people) != 0 ? Double(failer) / Double(people) : 0))
        
        people -= failer
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
