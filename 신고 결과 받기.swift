import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    let duplicateRemoveReport = Set(report)
    var reportList = [String:[String]]()  // 신고당한자 : [신고한사람들]
    var stopCntList = [String:Int]() // 신고당한자 : 갯수
    var mailList: [String] = []
    var answer: [Int] = Array(repeating:0, count: id_list.count)

    // 내가 신고한 유저들, 유저마다 신고당한 횟수 담기
    for target in duplicateRemoveReport {
        var splitTarget = target.components(separatedBy:" ")
        var user: String = splitTarget[0]
        var id: String = splitTarget[1]
        if reportList[id] == nil {
            reportList[id] = [user]
        }else {
            reportList[id]?.append(user)
        }
        if stopCntList[id] == nil {
            stopCntList[id] = 1
        }else {
            stopCntList[id]? += 1
        }
    }
    
    for (id,cnt) in stopCntList {
        if cnt >= k {
            for target in reportList {
                if id == target.key {
                    mailList += target.value
                }
            }
        }
    }
    
    for id in mailList {
        let idx = id_list.firstIndex(of:id)!
        answer[idx] += 1
    }
    
    
    return answer
}
