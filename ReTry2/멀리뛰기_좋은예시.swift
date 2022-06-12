func solution(_ n:Int) -> Int {
    var a = 0
    var b = 1
    for _ in 0...n-1 {
        let ab = b
        b = (a + b) % 1234567
        a = ab % 1234567
    }

    return b
}

