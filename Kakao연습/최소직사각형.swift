import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var target = sizes
    for i in 0..<sizes.count {
        var maxValue = max(target[i][0], target[i][1])
        var minValue = min(target[i][0], target[i][1])
        target[i][0] = maxValue
        target[i][1] = minValue
    }
    var widthValue = target.sorted{ $0[0] > $1[0]}[0][0]
    var heightValue = target.sorted{ $0[1] > $1[1]}[0][1]
    
    return widthValue * heightValue
}
