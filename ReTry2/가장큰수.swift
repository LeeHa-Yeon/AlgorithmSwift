import Foundation

func solution(_ numbers:[Int]) -> String {
    let sortNumber = numbers.sorted { 
        Int("\($0)\($1)")! > Int("\($1)\($0)")!
    }  
    let answer = sortNumber.map { String($0) }.reduce("",+)
    
    return sortNumber.first == 0 ? "0" : answer
}
