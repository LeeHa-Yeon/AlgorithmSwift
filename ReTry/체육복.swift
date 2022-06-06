import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var answer = Array(repeating: true, count: n)
    var lost = lost.sorted(by: <)
    var reserve = reserve.sorted(by: <)
    
    // 체육 수업 가능한 학생 = 전체 학생 - 체육복이 없는 학생
    for i in lost {
        answer[i-1] = false
    }
    
    // 여분이 있는데 도난 당한 사람
    for i in reserve {
        if lost.contains(i) { 
            answer[i-1] = true 
            lost.remove(at: lost.firstIndex(of: i)!)
            reserve.remove(at: reserve.firstIndex(of: i)!)
            
        }
    }
    
    // 여분 체육복을 앞,뒤 친구에게 빌려주는 조건
    for target in lost {
        if reserve.contains(target-1){
            answer[target-1] = true 
            lost.remove(at: lost.firstIndex(of: target)!)
            reserve.remove(at: reserve.firstIndex(of: target-1)!)
        }else if reserve.contains(target+1) {
            answer[target-1] = true 
            lost.remove(at: lost.firstIndex(of: target)!)
            reserve.remove(at: reserve.firstIndex(of: target+1)!)
        }
    }
    
    return answer.filter { $0 == true }.count
}
