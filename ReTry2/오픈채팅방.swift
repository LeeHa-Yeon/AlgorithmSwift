import Foundation

func solution(_ record:[String]) -> [String] {
    var dic:[String: String] = [:]
    var answer:[String] = []
    
    for userInfo in record {
        let allUserInfo = userInfo.split(whereSeparator: { $0 == " " })
        let keyword = String(allUserInfo[0]), user = String(allUserInfo[1])
        if keyword == "Enter" || keyword == "Change" {
            dic[user] = String(allUserInfo[2])
        }
    }
    
    for userInfo in record {
        let allUserInfo = userInfo.split(whereSeparator: { $0 == " " })
        let keyword = String(allUserInfo[0]), user = String(allUserInfo[1])
        if keyword == "Enter" || keyword == "Leave" {
            let result = keyword == "Enter" ? "\(dic[user]!)님이 들어왔습니다." : "\(dic[user]!)님이 나갔습니다."
            answer.append(result)
        }
    }
    
    return answer
}
