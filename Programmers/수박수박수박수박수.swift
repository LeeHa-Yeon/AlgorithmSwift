import Foundation 

func solution(_ n:Int) -> String {
    let word: String = String(repeating: "수박", count: n)
    let answer = word.substring(to: n)
    return answer
}
