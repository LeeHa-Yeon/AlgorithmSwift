import Foundation

func solution(_ s:String) -> Int {
    var answer: String = s
    var NumByStrArr = ["zero","one","two","three","four","five","six","seven","eight","nine"]
    
    for (idx,str) in NumByStrArr.enumerated() {
        answer = answer.replacingOccurrences(of:str,with:"\(idx)")
    }

    return Int(answer)!
}
