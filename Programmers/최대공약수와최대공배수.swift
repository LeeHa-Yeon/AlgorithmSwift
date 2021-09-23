import Foundation

func GCD(_ a: Int, _ b: Int) -> Int {
    let remain = a % b
    return remain == 0 ? min(a,b) : GCD(b, remain)
}

func LCM(_ a: Int, _ b: Int) -> Int {
    return a * b / GCD(a,b)
}

func solution(_ a: Int, _ b: Int) -> [Int] {
    return [GCD(a,b),LCM(a,b)]
}


print(solution(2, 5))
