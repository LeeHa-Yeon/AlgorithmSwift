func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var answer: [Int] = []
    for element in arr {
        if element % divisor == 0 { answer.append(element) }
    }
    answer.sort()
    return answer.isEmpty ? [-1] : answer
}
