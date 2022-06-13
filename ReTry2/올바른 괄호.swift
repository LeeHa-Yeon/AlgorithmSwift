import Foundation

func solution(_ s:String) -> Bool
{
    var stack: [Character] = []
    
    if s[s.startIndex] == ")" { return false }
    
    for c in s {
        if c == "(" {
            stack.append(c)
        }else {
            if stack.count > 0 && stack.last! == "(" {
                stack.removeLast()
            }
        }
    }
    
    return stack.isEmpty
}
