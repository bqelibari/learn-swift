func expandedForm(_ num: Int) -> String {
    let numAsString = String(num)
    let myArray = Array.init(numAsString)
    var numOfDigits = numAsString.count - 1
    var resultArray: [String] = []

    for char in myArray {
        if char == "0"{
            numOfDigits -= 1
            continue
        }
        var zeros = String.init(repeating: "0", count: numOfDigits)
        resultArray.append((String(char) + zeros))
        numOfDigits -= 1
    }        
    return resultArray.joined(separator: " + ")
}