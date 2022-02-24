class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let xStr = String(x)
        var xArray = Array(xStr)
        let originArry = xArray
        xArray.reverse()
        
        for i in 0..<xArray.count/2 {
            if originArry[i] != xArray[i] {
                return false
            }
        }
        return true
    }
}
