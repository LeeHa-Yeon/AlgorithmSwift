func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer: [[Int]] = []
    for row_idx in 0..<arr1.count {
        var item: [Int] = []
        for col_idx in 0..<arr1[0].count {
            item.append(arr1[row_idx][col_idx]+arr2[row_idx][col_idx])
        }
        answer.append(item)
    }
    return answer
}
