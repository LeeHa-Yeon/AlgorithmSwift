import Foundation

func solution(_ s:String) -> Bool
{
    var stack: [Character] = []
    
    if s.count % 2 != 0 {
        return false
    }
  
    for i in s {
        if i == "("{
            stack.append(i)
        }else if i == ")" {
            if stack.isEmpty {
                return false
            }
            stack.removeLast()
        }
    }

    return stack.count == 0 ? true : false
}
