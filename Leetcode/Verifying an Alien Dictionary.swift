class Solution {
    func isAlienSorted(_ words: [String], _ order: String) -> Bool {
        
        // Dic - 특정 key를 통해서 순서를 찾기 위한 용도
        var orderDic: [Character:Int] = [:]
        for (idx,value) in order.enumerated() {
            orderDic[value] = idx
        }
        
				// 특정 조건 order에 따라 정렬하는 부분
        let sortedWords = words.sorted {
						// 인접 단어를 비교하기 위해서 
            let firstWordArr = Array($0)
            let secondWordArr = Array($1) 
						// index out of range를 방지하고자 배열의 갯수가 적은 단어를 채택
            let rotationCnt = min(firstWordArr.count,secondWordArr.count)
						// 공백과 단어를 비교하기 위한 플래그
            var isCheck = false
            
            for i in 0..<rotationCnt {
                if firstWordArr[i] == secondWordArr[i] {
										// 같은 원소라면 비교할 필요가 없으므로 넘어감
                    isCheck = true
                    continue
                }else {
                    // 다른 원소라면 비교 -> 이때 orderDic의 key에 특정 원소를 넣어 order의 해당 위치를 파악
                    if orderDic[firstWordArr[i]]! > orderDic[secondWordArr[i]]! { 
                        return false 
                    } else {
                        return true
                    }
                }
            }
						// 마지막으로 공백과 단어를 비교하는 구간
            return isCheck && firstWordArr.count < secondWordArr.count
        }
        
				// order에 맞게 정렬된 외계인언어와 words가 맞는지 확인
        return sortedWords == words
    }
}
