func solution(_ num:Int) -> Int {
    var target = num
    var cnt = 0
    
    while target != 1 {
        if cnt == 500 { return -1 }
        target = target % 2 == 0 ? (target / 2) : (target * 3 + 1)
        cnt += 1
    }
    
    return cnt
}
