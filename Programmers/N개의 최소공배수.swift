func solution(_ arr:[Int]) -> Int {
    var arr = arr
    var a: Int = arr.removeFirst()
    var b: Int = arr.removeFirst()
    var result = 0
    while true {
        result = lcm(a,b)
        a = result
        if arr.count == 0 {
            break
        }
        b = arr.removeFirst()
    }
    return result
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a*b/gcd(a,b)
}

func gcd(_ a: Int, _ b: Int) -> Int {
    let mod: Int = a%b
    return 0 == mod ? min(a,b) : gcd(b,mod)
}
