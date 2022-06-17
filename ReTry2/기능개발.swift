import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var timeArr: [Int] = []
    var answer: [Int] = []
    
    for idx in 0..<progresses.count {
        var time = (100 - progresses[idx]) / speeds[idx]
        time += time * speeds[idx] + progresses[idx] < 100 ? 1 : 0
        timeArr.append(time)
    }
    var standard: Int = timeArr[0]
    var cnt: Int = 1
    
    for idx in 1..<timeArr.count {
        if timeArr[idx] > standard {
            answer.append(cnt)
            standard = timeArr[idx]
            cnt = 1
        }else {
            cnt += 1
        }
        
        if idx == timeArr.count - 1 {
            answer.append(cnt)
        }
    }

    return answer
}
