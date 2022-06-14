import Foundation

func solution(_ numbers:String) -> Int {
    let numberArr = numbers.map{ String($0) }
    var tempSet = Set<Int>()
    var answer = 0
    for i in 1...numberArr.count {
        getPermutaion(numberArr,i,&tempSet,0)
    }
    
    for target in tempSet {
        if target > 1 && isPrime(target) {
            answer += 1
        }
    }
    
    return answer
}

func getPermutaion(_ arr: [String], _ targetNum: Int, _ result: inout Set<Int>, _ idx: Int = 0){

    var arr = arr

    if idx == targetNum {
        var num: String = ""
        for i in  Array(arr[0..<idx]) {
            num += String(i)
        }
        result.insert(Int(num)!)
    }

    for i in idx..<arr.count {
        arr.swapAt(idx, i)
        getPermutaion(arr, targetNum, &result,idx+1)
        arr.swapAt(idx, i)
    }
}

func isPrime(_ num: Int) -> Bool {
    if (num < 4) {
        return (num == 1) ? false : true
    }
    
    for i in 2...Int(sqrt(Double(num))) {
        if(num % i == 0) {
            return false
        }
    }
    return true
}
