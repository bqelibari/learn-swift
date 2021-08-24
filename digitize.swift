func digitize(_ num: Int) -> [Int] {
    var numCopy = num
    var myArray: [Int] = []
    var digit = 0
    if num == 0{
        return [0]
    }
    while numCopy > 0{
        digit = numCopy % 10
        numCopy = numCopy/10
        myArray.append(digit)
    }
    return myArray
}