import Foundation

func solution(_ alp:Int, _ cop:Int, _ problems:[[Int]]) -> Int {
    var alp = alp
    var cop = cop
    var time: Int = 0
    let sortProblems = problems.sorted{
        if $0[0] == $0[1] { return $0[1] < $1[1] }
        return $0[0] < $1[0]
    }
    

    for (idx,i) in sortProblems.enumerated() {
        
        print("---->",idx,i)
        
        let currentProblem = i
        if alp < currentProblem[0] && cop == currentProblem[1] {

            let upCnt = (currentProblem[0] - alp)
            time += upCnt
            alp += upCnt
        }else if alp == currentProblem[0] && cop < currentProblem[1] {

            let upCnt = (currentProblem[1] - cop)
            time += upCnt
            cop += upCnt
        }
        print(alp,cop,time)
        // 문제를 푼다
        if idx + 1 < sortProblems.count {
            let nextProblem = sortProblems[idx + 1]
            var rotation1 = 0
            var rotation2 = 0
            if (nextProblem[0] > alp) {
                rotation1 = (nextProblem[0] - alp) / currentProblem[2]
                alp += currentProblem[2] * rotation1
                cop += currentProblem[3] * rotation1
            }else if  (nextProblem[1] > cop) {
                rotation2 = (nextProblem[1] - cop) / currentProblem[3]
                alp += currentProblem[2] * rotation2
                cop += currentProblem[3] * rotation2
            }
            time += rotation1 > rotation2 ? rotation1 * currentProblem[4] : rotation2 * currentProblem[4]
        
        }
        print(alp,cop,time)

    }

    return time
}

solution(0, 0,[[0,0,2,1,2],[4,5,3,1,2],[4,11,4,0,2],[10,4,0,4,2]])

/*
 
 alp    cop    problems    result
 10    10    [[10,15,2,1,2],[20,20,3,3,4]]    15
 0    0    [[0,0,2,1,2],[4,5,3,1,2],[4,11,4,0,2],[10,4,0,4,2]]    13
 
 */
