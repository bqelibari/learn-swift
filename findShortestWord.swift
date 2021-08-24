func find_short(_ str: String) -> Int{
    let myArray = Array.init(str.split(separator: " "))
    if let min = myArray.min(by:{ $0.count < $1.count}){
        return Int(min)!
    }
    return 1
}