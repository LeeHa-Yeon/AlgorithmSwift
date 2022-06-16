import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var wordTuple = [(Int,Int)]()
    var stack = [(Int,Int)]()
    var answer: Int = 0
    
    for (idx,value) in priorities.enumerated() {
        wordTuple.append((idx,value))
    }
    
    while !wordTuple.isEmpty {
        let target = wordTuple.removeFirst() // (0,2)
        var flag: Bool = false
        for i in wordTuple {
            if target.1 >= i.1 {  continue }
            else { flag = true }
        }
        if flag {  wordTuple.append(target) 
        }else {  stack.append(target) }
    }
    
    for (idx,i) in stack.enumerated() {
        if i.0 == location { answer = idx+1 }
    }
    
    return answer
}
