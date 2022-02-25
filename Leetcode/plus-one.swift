class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var arr = digits
        
        // 마지막 원소에 1을 더한다.
        arr[digits.count - 1] += 1
        
        // 역순으로 순회하며 각 원소가 10이상이면 자릿수를 올려준다.
        for i in arr.indices.reversed() {
            if arr[i] > 9 {
                arr[i] = arr[i] % 10
                
                if i == 0 {
                    // 맨 앞이라면 맨 앞에 새로운 원소로 추가
                    arr.insert(1, at: 0)
                } else {
                    arr[i - 1] += 1
                }
            }
        }
        
        return arr
    }
}
