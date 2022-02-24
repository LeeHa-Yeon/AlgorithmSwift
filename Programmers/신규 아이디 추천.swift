import Foundation

func solution(_ new_id:String) -> String {
    var new_id = new_id
    new_id = firstStage(new_id)
    new_id = secondStage(new_id)
    new_id = thridStage(new_id)
    new_id = fourStage(new_id)
    new_id = fifthStage(new_id)
    new_id = sixthStage(new_id)
    new_id = seventhStage(new_id)
    return new_id
}

// 1: 모든 대문자를 대응되는 소문자로 치환
func firstStage(_ new_id:String) -> String {
    return new_id.lowercased()
}

// 2: 알파벳 소문자, 숫자, 빼기(-), 밑줄(_), 마침표(.)를 제외한 모든 문자를 제거
func secondStage(_ new_id:String) -> String {
    var result = ""
    for chr in new_id {
        if chr.isLetter || chr.isNumber || chr == "-" || chr == "_" || chr == "." {
            result += String(chr)
        }
    }
    return result
}

// 3: 마침표(.)가 2번 이상 연속된 부분을 하나의 마침표(.)로 치환
func thridStage(_ new_id:String) -> String {
    var new_id = new_id
    while new_id.contains("..") {
        new_id = new_id.replacingOccurrences(of: "..", with: ".")
    }
    return new_id
}

// 4: 마침표(.)가 처음이나 끝에 위치한다면 제거
func fourStage(_ new_id:String) -> String {
    var new_id = new_id
    // 처음에 .이 있다면 제거
    while new_id.hasPrefix(".") || new_id.hasSuffix("."){
        new_id = new_id.trimmingCharacters(in: ["."])
    }
    
    return new_id
}

// 5: new_id가 빈 문자열이라면, new_id에 "a"를 대입
func fifthStage(_ new_id:String) -> String {
    return new_id == "" ? "a" : new_id
}

// 6: new_id의 길이가 16자 이상이면, new_id의 첫 15개의 문자를 제외한 나머지 문자들을 모두 제거합니다.
//    만약 제거 후 마침표(.)가 new_id의 끝에 위치한다면 끝에 위치한 마침표(.) 문자를 제거합니다.
func sixthStage(_ new_id:String) -> String {
    var new_id = new_id
    if new_id.count >= 16 {
        let endIdx = new_id.index(new_id.startIndex, offsetBy: 15)
        new_id = String(new_id[new_id.startIndex..<endIdx])
    }
    if new_id.hasSuffix(".") {
        new_id = new_id.trimmingCharacters(in: ["."])
    }
    
    return new_id
}

// 7 : new_id의 길이가 2자 이하라면, new_id의 마지막 문자를 new_id의 길이가 3이 될 때까지 반복해서 끝에 붙입니다.
func seventhStage(_ new_id:String) -> String {
    var new_id = new_id
    var endStr:String = String(new_id.suffix(1))
    
    while new_id.count < 3 {
        new_id += endStr
    }
    
    return new_id
}
