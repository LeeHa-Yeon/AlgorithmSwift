import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var wResult:[Int] = []
    var hResult:[Int] = []
    
    for i in 0..<sizes.count {
        var wInit = 0
        var hInit = 0
        if sizes[i][0] < sizes[i][1] {
            wInit = sizes[i][1]
            hInit = sizes[i][0]
        }else {
            wInit = sizes[i][0]
            hInit = sizes[i][1]
        }
        wResult.append(wInit)
        hResult.append(hInit)
    }
    
    return wResult.max()! * hResult.max()!
}
