import Foundation

func solution(_ num:Int) -> String {
    if num % 2 == 0 {
        return "Even"
    }
    return "Odd"
}

print(solution(3))
