import Foundation

func solution(_ n:Int) -> Int {
    var answer = 1
    while(true) {
        if (n % answer == 1){
            break
        }
        answer += 1
    }
    
    return answer
}
