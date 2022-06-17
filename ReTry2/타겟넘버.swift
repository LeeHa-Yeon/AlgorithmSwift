import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var answer = 0
    answer += dfs(numbers,0,0,target)
    return answer
}

func dfs(_ numbers: [Int], _ idx: Int, _ result: Int, _ target: Int) -> Int {
    if numbers.count == idx {
        return result == target ? 1 : 0
    }
    return dfs(numbers,idx+1,result+numbers[idx],target) + dfs(numbers,idx+1,result-numbers[idx],target)
} 
