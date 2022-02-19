
import Foundation

func solution(_ numbers:[Int]) -> Int {
    var allNumbers = Array(0...9)
    var sum = allNumbers.reduce(0,+)
    
    for number in numbers {
        if allNumbers.contains(number) {
            sum-=number
        }
    }

    return sum
}
