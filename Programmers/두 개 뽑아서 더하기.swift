import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var answer = Set<Int>()
    getCombination(numbers, 2, 0, &answer,[])
    return answer.sorted(by: <)
}

func getCombination(_ arr: [Int], _ num: Int, _ idx: Int = 0, _ res: inout Set<Int>, _ tmp: [Int] ) {
    if tmp.count == num {
        res.insert(tmp.reduce(0,+))
        return
    }
    
    for i in idx..<arr.count {
        getCombination(arr,num,i+1,&res,tmp+[arr[i]])
    }
}
