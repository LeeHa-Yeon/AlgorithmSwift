/*
func solution(_ seoul:[String]) -> String {
    let idx = seoul.index(of: "Kim")
    return "김서방은 \(idx!)에 있다"
}
*/

func solution(_ seoul:[String]) -> String {
    return "김서방은 \(seoul.index(of: "Kim")!)에 있다"
}
