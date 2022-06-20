import Foundation

func solution(_ s:String) -> [Int] {
    var s = s
    var zeroCnt: Int = 0, rotation: Int = 0
    while s != "1" {
        let noZeroS = s.replacingOccurrences(of: "0", with: "")
        zeroCnt += s.count - noZeroS.count
        s = String(noZeroS.count,radix:2)
        rotation += 1
    }
    return [rotation,zeroCnt]
}
