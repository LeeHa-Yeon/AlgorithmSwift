import Foundation

func solution(_ s:String) -> [Int] {
    var splitS = s.components(separatedBy: "},")
    var numberArr = [String]()
    var numberDic = [Int:Int]()
    var answer = [Int]()
    for target in splitS {
        numberArr += target.components(separatedBy: ["{","}",","]).filter{ $0 != ""}
    }
    for n in numberArr {
        let num = Int(n)!
        if numberDic[num] == nil {
            numberDic[num] = 1
        }else {
            numberDic[num]? += 1
        }
    }
    let sortedArr = numberDic.sorted { $0.1 > $1.1}
    
    for i in sortedArr {
        answer.append(i.key)
    }
    
    return answer
}
