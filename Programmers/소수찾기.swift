import Foundation

func solution(_ numbers:String) -> Int {
    var answer = Set<Int>()

    func isPrime(_ number: Int) -> Bool {
        if number < 2 { return false }
        let count = Int(sqrt(Double(number)))
        if count < 2 { return true }

        for i in 2...count {
            if number % i == 0 {
                return false
            }
        }

        return true
    }

    func comb(_ numbers: [Int], _ index: Int, _ result: String) {   
        let fixedNumber = numbers[index]
        var newResult = result + String(fixedNumber)
        var newNumbers = numbers
        newNumbers.remove(at: index)

        var newNumber = Int(newResult)!
        if isPrime(newNumber) { answer.insert(newNumber) }

        if newNumbers.count == 0 { return }

        for i in 0..<newNumbers.count {
            comb(newNumbers, i, newResult)
        }
    }

    for i in 0..<numbers.count { 
        comb(numbers.map{ Int(String($0))! }, i, "")
    }

    return answer.count
}
