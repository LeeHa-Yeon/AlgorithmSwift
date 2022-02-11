func solution(_ a:Int, _ b:Int) -> Int64 {
    var sum: Int = 0
    
    if a == b {
        return Int64(a)
    } else if a > b {
        for num in b...a {
        sum += num
        }
        return Int64(sum)
    }
    else {
        for num in a...b {
        sum += num
        }
        return Int64(sum)
    }
}
