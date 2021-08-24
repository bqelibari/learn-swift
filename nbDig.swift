func nbDig(_ n: Int, _ d: Int) -> Int {
    var myArray: [Int] = []
    var occurrenceCounter = 0
    for num in stride(from: 0, through: n, by: 1){
        myArray.append(num*num)
    }
    for element in myArray {
        var number = element
        while number > 0 {
            if (number%10) == d {
                occurrenceCounter += 1
            }
            number /= 10
        }
    }
    return occurrenceCounter + 1
}