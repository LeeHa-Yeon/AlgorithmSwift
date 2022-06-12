import Foundation

func solution(_ land:[[Int]]) -> Int{
    var copyLand = land
    
    for i in 1..<land.count {
        copyLand[i][0] += max(copyLand[i-1][1],copyLand[i-1][2],copyLand[i-1][3])
        copyLand[i][1] += max(copyLand[i-1][0],copyLand[i-1][2],copyLand[i-1][3])
        copyLand[i][2] += max(copyLand[i-1][0],copyLand[i-1][1],copyLand[i-1][3])
        copyLand[i][3] += max(copyLand[i-1][0],copyLand[i-1][1],copyLand[i-1][2])
    }
    return copyLand[land.count-1].max()!
}
