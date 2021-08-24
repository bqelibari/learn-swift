func twosum(numbers: [Double], target: Double) -> [Int] {
    var firstNumIndex = 0
    var secondNumIndex = 0
    for firstNum in numbers {
        for secondNum in numbers {
            if (firstNum + secondNum) == target && firstNumIndex != secondNumIndex{
                return [firstNumIndex, secondNumIndex]
            }
        secondNumIndex += 1
        }
    secondNumIndex = 0
    firstNumIndex += 1
    }
    return [1]
}