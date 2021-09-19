import Foundation

func solution(_ phone_number:String) -> String {
    var answer: String = ""

    
    for i in 0..<phone_number.count {
        if i < phone_number.count - 4 {
            answer+="*"
        }
    }
    answer+=phone_number.suffix(4)

    return answer
}

print(solution("010333344444"))
print(solution("027778888"))
