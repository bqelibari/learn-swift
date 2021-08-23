func bouncingBall(_ height: Double, _ bounce: Double, _ window: Double) -> Int {
    var ballHeight = height
    var windowPassCounter = 0
    
    if bounce <= 0 || bounce >= 1 {
        return -1
    }
    
    if height>0 && window<height{
        while ballHeight>window{
            windowPassCounter += 2
            ballHeight *= bounce
        }
    }
    return (windowPassCounter-1)
}