import Foundation

let inputValue = readLine()
let inputValue2 = readLine()

if let inputX = inputValue {
    if let inputY = inputValue2 {
        let x = Int(inputX)!
        let y = Int(inputY)!
        if x > 0 && y > 0 {
            print("1")
        } else if x < 0 && y > 0 {
            print("2")
        } else if x < 0 && y < 0 {
            print("3")
        } else {
            print("4")
        }
    }
}
