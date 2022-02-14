func solution(_ dartResult:String) -> Int {
  var temp = ""
  var splitResult: [String] = []
  var scores: [Int] = []
  
  for word in dartResult {
    if (Int(String(word)) == nil) { // 숫자가 아닌경우
      if word == "*" || word == "#" {
        splitResult[splitResult.count-1] += String(word)
      } else {
        temp += String(word)
        splitResult.append(temp)
        temp = ""
      }
    } else { // 숫자인경우
      temp += String(word)
    }
  }
  
  for i in 0..<splitResult.count {
    var number = ""
    for j in splitResult[i] {
      // 문자인 경우
      if Int(String(j)) == nil {
        switch j {
        case "S":
          scores.append(Int(number)! * 1)
        case "D":
          scores.append(Int(number)! * Int(number)!)
        case "T":
          scores.append(Int(number)! * Int(number)! * Int(number)!)
        case "*":
          scores[scores.count-1] *= 2
          if i > 0 {
              scores[scores.count-2] *= 2
            }
        case "#":
          scores[scores.count-1] *= -1
        default:
          break
        }
        number = ""
        
        // 숫자인 경우
      } else {
        number += String(j)
      }
    }
  }
   
  return scores.reduce(0) { $0 + $1 }
}
