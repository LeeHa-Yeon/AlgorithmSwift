func solution(_ arr:[Int]) -> Int {
    if arr.count == 1 { return arr[0] }
    var a = arr[0]
    var b = arr[1]
    var idx = 2
    
    
    for target in arr.suffix(arr.count-2) {
        a = lcm(a,b)
        b = target
    }
    
    
    return lcm(a,b)
}

func gcd(_ a: Int, _ b: Int) -> Int {
    let r: Int = a % b
    return r == 0 ? min(a,b) : gcd(b,r)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a*b/gcd(a,b)
}

