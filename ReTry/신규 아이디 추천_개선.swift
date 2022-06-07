import Foundation

func solution(_ new_id:String) -> String {
    var copyNewId = new_id
    
    copyNewId = firstStage(copyNewId)
    copyNewId = secondStage(copyNewId)
    copyNewId = thirdStage(copyNewId)
    copyNewId = fourthStage(copyNewId)
    copyNewId = fifthStage(copyNewId)
    copyNewId = sixthStage(copyNewId)
    copyNewId = seventhStage(copyNewId)
    
    return copyNewId
}

func firstStage(_ new_id:String) -> String {
    return new_id.lowercased()
}

func secondStage(_ new_id:String) -> String {
    return String(Array(new_id).filter { $0.isLetter || $0.isNumber || $0 == "-" || $0 == "_" || $0 == "." })
}

func thirdStage(_ new_id:String) -> String {
    var copyNewId = new_id
    
    while copyNewId.contains("..") {
        copyNewId = copyNewId.replacingOccurrences(of:"..",with:".")
    }
    
    return copyNewId
}

func fourthStage(_ new_id:String) -> String {
    return new_id.trimmingCharacters(in: ["."])
}

func fifthStage(_ new_id:String) -> String {
    return new_id.isEmpty ? "a" : new_id
}

func sixthStage(_ new_id:String) -> String {
    var copyNewId = new_id.count >= 16 ? String(new_id.prefix(15)) : new_id
    if copyNewId.hasSuffix(".") { copyNewId.removeLast() }
    return copyNewId
}

func seventhStage(_ new_id:String) -> String {
    var copyNewId = new_id
    while copyNewId.count <= 2 {
        copyNewId += String(new_id.last!)
    }
    return copyNewId
}
