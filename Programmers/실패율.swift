import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var totalUserCnt:Int = stages.count
    var failDic = Dictionary<Int,Double>() 
    var answer: [Int] = []
   
    for num in 1...N {
        var failer = stages.filter { ($0) == num }.count
        if totalUserCnt != 0 {
            failDic[num] = Double(failer) / Double(totalUserCnt)
            totalUserCnt -= failer
        } else {
            failDic[num] = 0
        }
        
    }
    
    let sortedDictionary = failDic.sorted {
                                          if $0.1 == $1.1 {
                                              return $0.0 < $1.0
                                          }
                                          return $0.1 > $1.1 }
    
    for i in sortedDictionary {
        answer.append(i.key)
    }
    
    
    return answer
}
