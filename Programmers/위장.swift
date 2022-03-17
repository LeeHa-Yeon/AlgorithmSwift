import Foundation

func solution(_ clothes:[[String]]) -> Int {
   
    var sortedClothes = clothes.sorted{ $0[1] > $1[1] }
    
    var currentType = sortedClothes[0][1]
    var cntArr: [Int] = []
    var cnt = 0
    
    for targetClothes in sortedClothes {
        
        if targetClothes[1] == currentType {
            cnt += 1
        }else {
            cntArr.append(cnt)
            currentType = targetClothes[1]
            cnt = 1
        }
    }
    
    cntArr.append(cnt)
    
    return cntArr.map{ $0+1 }.reduce(1,*) - 1
}
