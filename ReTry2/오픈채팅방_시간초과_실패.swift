import Foundation

func solution(_ record:[String]) -> [String] {
    var dic:[String: String] = [:]
    var answer: String = ""
    
    for userInfo in record {
        let allUserInfo = userInfo.split(whereSeparator: { $0 == " " })
        let keyword = String(allUserInfo[0]), user = String(allUserInfo[1])
        var result:String = ""
        
        if keyword == "Enter" || keyword == "Leave" {
            result = keyword == "Enter" ? "\(user)님이 들어왔습니다." : "\(user)님이 나갔습니다."
            answer += result + "*"
        }
        
        if keyword == "Enter" || keyword == "Change" {
            dic[user] = String(allUserInfo[2])
        }
    }
    for dicInfo in dic {
        answer = answer.replacingOccurrences(of: dicInfo.key, with: dicInfo.value)
    }
    
    
    return answer.split(separator: "*").map(String.init)
}
