import Foundation

func solution(_ phone_number:String) -> String {
    var answer = ""
    for i in 0 ..< phone_number.count-4 {
        answer += "*"
    }
    return answer + phone_number.suffix(4)
    
}
