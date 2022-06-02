func solution(_ a:Int, _ b:Int) -> Int64 {
    var sum = 0 
    if a >= b {
        for i in b...a {
            sum += i
        }
    }else {
        for i in a...b {
            sum += i
        }
    }
    return Int64(sum)
}
