import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    // 중복된 신고 제거하기
    let report = removeDuplication(report)
    var reportInfo:[String:[String]] = [:]
    var reportedCnt = Array(repeating:0,count:id_list.count)
    var idNumber:[String:Int] = [:]
    
    for (i,id) in id_list.enumerated() {
        idNumber[id] = i
    }
    
    for target in report {
        let splitTarget: [String] = target.components(separatedBy:" ")
        let report = splitTarget[0]
        let reported = splitTarget[1]
        
        if reportInfo[reported] == nil {
            reportInfo[reported] = [report]
        }else {
            reportInfo[reported]!.append(report)
        }
    }
    
    for info in reportInfo {
        if info.value.count >= k {
            for id in info.value {
                reportedCnt[idNumber[id]!] += 1
            }
        }
    }

    return reportedCnt
}

func removeDuplication(_ array: [String]) -> [String]{
    let set = Set(array)
    let duplicationRemovedArray = Array(set)
    return duplicationRemovedArray
}
