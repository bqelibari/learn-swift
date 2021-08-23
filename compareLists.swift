func compare(_ a: [Int], _ b: [Int]) -> Bool {
    for element in a{
        if b.contains(element*element){
            continue
        } else {
            return false
        }
    }
    return true
}