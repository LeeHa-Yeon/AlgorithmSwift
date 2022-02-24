class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for (idx,value) in nums.enumerated(){
        for (idx2,value2) in nums.enumerated() {
            if idx == idx2 {
                continue
            }
            if value + value2 == target {
                return [idx,idx2]
            }
        }
    }
    return []
}
    
}
