import Foundation

let inputValue = readLine()

if let inputResult = inputValue {
    let array = inputResult.components(separatedBy:" ")
    var hour = Int(array[0])!
    var minute = Int(array[1])!
    
    if minute < 45 {
        minute += 15
        if hour == 0 {
            hour = 23
        }else {
            hour-=1
        }
    }else {
        minute -= 45
    }
    print("\(hour) \(minute)")
    
}
