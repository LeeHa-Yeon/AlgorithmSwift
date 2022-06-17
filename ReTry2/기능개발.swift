import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var timeArr: [Int] = []
    var answer: [Int] = []
    
    for idx in 0..<progresses.count {
        var time = Int(ceil(Double(100 - progresses[idx]) / Double(speeds[idx])))
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
