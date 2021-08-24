func maps(a : Array<Int>) -> Array<Int> {
    var myArray: [Int] = []
    for element in a{
        myArray.append(element*2)
    }
    return myArray
}