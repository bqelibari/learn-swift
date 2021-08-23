func expressionsMatter(_ a: Int, _ b: Int, _ c: Int) -> Int {
    let myArray: [Int] = [a*b*c, a+b+c, a+b*c, a*b+c, (a+b)*c, a*(b+c)]
    return myArray.max()!
}