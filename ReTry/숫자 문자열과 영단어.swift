import Foundation

func solution(_ s:String) -> Int {
    var answer = s
    let wordArr = ["zero","one","two","three","four","five","six","seven","eight","nine"]
    
    for (idx,word) in wordArr.enumerated() {
        answer = answer.replacingOccurrences(of:word, with:"\(idx)")
    }
    
    return Int(answer)!
    
}
