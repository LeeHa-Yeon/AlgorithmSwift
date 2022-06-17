import Foundation

func solution(_ orders:[String], _ course:[Int]) -> [String] {
    var result: [String:Int] = [:]
    var answer: [String] = []
    for c in course {
        for o in orders {
            let order = Array(o).map { String($0) }
            getCollection(order,c,0,&result,[])
        }
        
        let sortedR = result.sorted { $0.1 > $1.1 }
        for (key,value) in sortedR {
            if result.values.max() == 1 { break }
            if value == result.values.max() { answer.append(key) }
            else { break }
        }
        result = [:]
    }
    
    
    return answer.sorted{ $0 < $1 }
}

func getCollection(_ orders:[String], _ targetNum: Int, _ idx: Int = 0, _ res: inout [String:Int], _ temp: [String]) {
    if temp.count == targetNum {
        let sTemp = temp.sorted{ $0 < $1 }
        let joinValue = sTemp.joined()
        if res[joinValue] == nil {
            res[joinValue] = 1
        }else {
            res[joinValue]? += 1
        }
        return
    }
    for i in idx..<orders.count {
        getCollection(orders,targetNum,i+1,&res,temp+[orders[i]])
    }
}

