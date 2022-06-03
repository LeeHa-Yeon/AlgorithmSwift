import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var widthValue: Int = 0
    var heightValue: Int = 0
    for size in sizes {
        if size[0] > size[1] {
            widthValue = widthValue > size[0] ? widthValue : size[0]
            heightValue = heightValue > size[1] ? heightValue : size[1]
        }else {
            widthValue = widthValue > size[1] ? widthValue : size[1]
            heightValue = heightValue > size[0] ? heightValue : size[0]
        }
    }

    return widthValue * heightValue
}
