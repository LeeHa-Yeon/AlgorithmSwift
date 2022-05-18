import Foundation

func solution(_ a: Int, _ b: Int) -> [Int] {
    return [gcd(a,b),lcm(a,b)]
}

func gcd(_ a: Int, _ b: Int) -> Int {
    var r = a % b
    return r == 0 ? min(a,b) : gcd(b,r)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a,b)
}
