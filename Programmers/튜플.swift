import Foundation

func solution(_ s:String) -> [Int] {
    
    // 문자열을 구분자 },로 나누어 배열로 저장하기 -> ["{{1,2,3", "{2,1", "{1,2,4,3", "{2}}"]
    var sArr = s.components(separatedBy: "},")
    var onlyNumArr: [[String]] = []
    var answer: [String] = []
    
    // },{ 특수문자를 제거한 숫자만 뽑아내기 -> [["1", "2", "3"], ["2", "1"], ["1", "2", "4", "3"], ["2"]]
    for (idx,value) in sArr.enumerated() {
        var removeNotNum = value.components(separatedBy: ["}",",","{"]).filter{ $0 != ""}
        onlyNumArr.append(removeNotNum)
    }
    
    // 배열의 크기순으로 정렬 -> 	[["2"], ["2", "1"], ["1", "2", "3"], ["1", "2", "4", "3"]]
    onlyNumArr = onlyNumArr.sorted{ $0.count < $1.count}
    
    // 정렬되어있으니 순서대로 숫자를 꺼내 answer에 존재하는지 파악하여 삽입 
    for target in onlyNumArr {
        for j in target {
            // 먼저 온 숫자가 answer에 들어가 있겠지 -> 없는 숫자가 차곡차곡 answer에 들어가게됨
            if !answer.contains(j) { 
                answer.append(j)
            }
        }
    }
    
    return answer.map{ Int(String($0))! }
}
