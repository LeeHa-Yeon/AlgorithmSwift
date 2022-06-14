import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var clotheType: [String: Int] = [:]
    var answer: Int = 1
    
    for i in clothes {
        if clotheType[i[1]] == nil {
            clotheType[i[1]] = 1
        }else {
            clotheType[i[1]]? += 1
        }
    }
    
    for (_,value) in clotheType {
        answer *= (value+1)
    }
    
    return answer - 1
}
