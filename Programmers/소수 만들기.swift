import Foundation

func solution(_ nums: [Int]) -> Int {
    var combiArr = [Int]()
    getCombination(nums,3,&combiArr,0,[])
    return combiArr.filter{isPrime($0)}.count
}

func getCombination(_ arr: [Int], _ targetNum: Int, _ res: inout [Int], _ idx: Int = 0, _ tmp: [Int]) {
    if tmp.count == targetNum {
        res.append(tmp.reduce(0,+))
        return
    }
    
    for i in idx..<arr.count {
        getCombination(arr,targetNum,&res,i+1,tmp + [arr[i]])
    }
}

// 소수
func isPrime(_ num: Int) -> Bool{
    for i in 2..<num {
        if num % i == 0 {
            return false
        }
    }
    return true
}
