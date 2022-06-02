func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var answer: [Int] = []
    answer = arr.sorted( by: < ).filter { $0 % divisor == 0 }
    return answer.isEmpty ? [-1] : answer
}
