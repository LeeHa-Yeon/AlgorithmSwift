import Foundation

func solution(_ nums: [Int]) -> Int {
    var cnt: Int = 0
    getCombination(nums,3,0,&cnt,[])
    return cnt
}

func getCombination(_ array: [Int], _ targetNum: Int = 3, _ idx: Int = 0, _ res: inout Int, _ temp: [Int]) {
    if temp.count == targetNum {
        res += isPrime(temp.reduce(0,+)) ? 1 : 0
        return 
    }
    
    for i in idx..<array.count {
        getCombination(array,targetNum,i+1,&res,temp+[array[i]])
    }
}

func isPrime(_ num: Int) -> Bool {
    if num < 4 { return num == 1 ? false : true }
    
    for i in 2...Int(sqrt(Double(num))) {
        if num % i == 0 { return false }
    }
    
    return true
}
