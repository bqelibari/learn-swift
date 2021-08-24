func squareDigits(_ num: Int) -> Int {
    if num == 0 {
        return 0
    }

    var numCopy = num
    var myArray:[Int] = []
    while numCopy > 0 {
        myArray.append(numCopy%10)
        numCopy /= 10
    }
    let newArray: [String] = myArray.map({String($0 * $0)}).reversed()
    let wrappedResult = Int(newArray.joined(separator: ""))
    let unwrappedResult: Int = wrappedResult!
    return unwrappedResult
}