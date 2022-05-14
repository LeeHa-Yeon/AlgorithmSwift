import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var people = Array(1...n)
    var lost = lost.sorted(by: <)
    var reserve = reserve.sorted(by: <)
    
    // 여분을 가진 학생이 도난 당했을 때 lost와, reserve 빼기
    for num in reserve {
        for target in lost {
            if reserve.contains(target) {
                lost = lost.filter { $0 != target }
                reserve = reserve.filter { $0 != target }
            }     
        }
    }
    
    if reserve != [] {
        for num in reserve {
            for target in lost {
                if target == num-1 || target == num+1 {
                    lost = lost.filter { $0 != target }
                    reserve = reserve.filter { $0 != num }
                    break
                }     
            }
        }
    }
    
    return people.count - lost.count
}
