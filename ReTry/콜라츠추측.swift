func solution(_ num:Int) -> Int {
    var totalCnt: Int = 0
    var target = num
    
    while target != 1 {
        if totalCnt == 500 { return -1 }
        target = target % 2 == 0 ? (target / 2) : (target * 3 + 1)
        totalCnt += 1
    }
    
    return totalCnt
}
