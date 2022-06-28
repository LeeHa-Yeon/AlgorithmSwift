import Foundation

func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
    var arr: [[Int]] = []
    var answer: [Int] = []
    
    // 행렬판 초기화
    settingArr(rows,columns,&arr)
    
    // 좌표 이동
    for query in queries {
        let r1 = query[0], c1 = query[1], r2 = query[2],c2 = query[3]
        var temp = arr[r1-1][c1-1]
        var minValue = arr[r1-1][c1-1] // 이 부분을 잘못썻음
        minValue = min(minValue,temp)
        
        // 왼쪽
        for i in r1-1..<r2-1 {
            let temp1 = arr[i+1][c1-1]
            arr[i][c1-1] = temp1
            minValue = min(minValue,temp1)
        }
        
        // 아래
        for i in c1-1..<c2-1 {
            let temp2 = arr[r2-1][i+1]
            arr[r2-1][i] = temp2
            minValue = min(minValue,temp2)
        }
        
        
        // 오른쪽
        for i in stride(from: r2-1 , to: r1-1, by: -1) {
            let temp3 = arr[i-1][c2-1]
            arr[i][c2-1] = temp3
            minValue = min(minValue,temp3)
        }
        
        // 위
        for i in stride(from: c2-1 , to: c1-1, by: -1) {
            let temp4 = arr[r1-1][i-1]
            arr[r1-1][i] = temp4
            minValue = min(minValue,temp4)
        }
        arr[r1-1][c1] = temp
        answer.append(minValue)

    }
    
    return answer
}

func settingArr(_ rows:Int, _ columns:Int, _ result: inout [[Int]]) { 
    var i: Int = 1
    for _ in 1...rows {
        result.append(Array(i..<i+columns))
        i += columns
    }

}
