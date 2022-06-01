func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer:[[Int]] = []
    
    for i in 0..<arr1.count {
        var targetArr:[Int] = []
        for j in 0..<arr1[0].count {
            targetArr.append(arr1[i][j]+arr2[i][j])
        }
        answer.append(targetArr)
    }
    return answer
}
