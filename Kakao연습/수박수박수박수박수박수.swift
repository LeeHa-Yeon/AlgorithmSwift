import Foundation 

func solution(_ n:Int) -> String {
    return String(String(repeating: "수박", count: n+1).prefix(n))
}
