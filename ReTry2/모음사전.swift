import Foundation

func solution(_ word:String) -> Int {
    let dic = ["A":0,"E":1,"I":2,"O":3,"U":4]
    let arr = [781,156,31,6,1]
    var answer: Int = 0
    for (idx,value) in word.enumerated() {
        answer += arr[idx]*dic[String(value)]! + 1
    }
    return answer
}
