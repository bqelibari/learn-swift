var empty: [Int] = Array.init()
var empty2: [Int] = []
var anyType: [Any] = [1, 2, 3, 4, 5, 6, 7, 8, 10, "hi", [1,2,3, "hi", ("tuple")], (1,2, "tuple", ["list"])]
var strArr: [String] = ["hello", "i", "am", "an", "array"]
var strings = ["hello", "i", "am", "an", "array"]

var firstIntArrayWithInitializer = Array(repeating: 0, count: 10)   //[0, 0, 0, 0, 0]

var str_array_with_initializer = Array(repeating: "zero", count: 10)    //["zero","zero","zero","zero","zero", "zero","zero","zero","zero","zero"]
var secondIntArrayWithInitializer = Array(repeating: 10, count: 10)  //[10, 10, 10, 10, 10, 10, 10, 10, 10, 10]

//arrays are not passed by reference
var numbers = [100, 50, 50, 50, 100]
var firstCopy = numbers
var secondCopy = numbers
var thirdCopy = numbers
var fourthCopy = numbers
var fifthCopy = numbers
numbers[0] = 100    //copies are untouched.


////////////////////////////////////  INSPECTING //////////////////////////////
var emptyOrNot = firstIntArrayWithInitializer.isEmpty //false
var noOfElements = firstIntArrayWithInitializer.count
var capacityBeforeRealloc = firstIntArrayWithInitializer.capacity


////////////////////////////////////  ACCESSING ELEMENTS //////////////////////////////
var firstElement = firstIntArrayWithInitializer.first
var lastElement = firstIntArrayWithInitializer.last
var randElement = firstIntArrayWithInitializer.randomElement()
var someRange = firstIntArrayWithInitializer[0...5] //INCLUDING 5TH INDEX (6TH ELEMENT)


////////////////////////////////////  ADDING ELEMENTS //////////////////////////////
firstIntArrayWithInitializer.append(10)
firstIntArrayWithInitializer.insert(50, at: 0)
firstIntArrayWithInitializer.insert(contentsOf: secondIntArrayWithInitializer, at: 0)
numbers.replaceSubrange(1...3, with: [1,2,3,4]) //[100, 50, 50, 50, 100] -> [100, 1, 2, 3, 4, 100]
numbers.reserveCapacity(100)//has now enough space to store 100 values, better performance if you know the amount of elements beforehand


////////////////////////////////////  COMBINING ARRAYS //////////////////////////////
numbers.append(contentsOf: firstCopy)
firstCopy += (10...15) //[100, 50, 50, 50, 100, 10, 11, 12, 13, 14, 15]
var combArray = secondCopy + thirdCopy // [100, 50, 50, 50, 100, 100, 50, 50, 50, 100]


////////////////////////////////////  REMOVING ELEMENTS //////////////////////////////
secondCopy.remove(at: 0)
secondCopy.removeFirst()    //returns the removed element also
combArray.removeFirst(5)    //removes first 5 elements, does not return
secondCopy.removeLast()     //returns
combArray.removeLast(3)     //removes last 3 elements
var last = combArray.popLast()  //remove last and return. must use/store it.
firstCopy.removeSubrange(1...3) //removes items at index 1,2,3
firstCopy.removeSubrange(1..<5) //removes index 1,2,3,4
firstCopy.removeAll()
secondCopy.removeAll(keepingCapacity: true)


numbers = [100, 50, 50, 50, 100]
firstCopy = numbers
secondCopy = numbers
thirdCopy = numbers
fourthCopy = numbers
fifthCopy = numbers


////////////////////////////////////  FINDING ELEMENTS //////////////////////////////
if firstCopy.contains(100) {
    firstCopy[0] = 50
}

var total = [21.37, 55.21, 9.32, 10.18, 388.77, 11.41]
var expensive = total.contains(where: {$0 > 300})   //practice closures! similar to lambda
var allExpensive = firstCopy.allSatisfy({$0 == 100})
var first = firstCopy.first(where: {$0 == 50})      //first element that meets condition
first = firstCopy.firstIndex(of: 50)                //first index of element
first = firstCopy.firstIndex(where: {$0 == 50})     //idx of first element that meets condidition
last = firstCopy.last(where: {$0 == 100})           //last element that meets condition
last = firstCopy.lastIndex(of: 100)                 //idx of first element that meets condidition
last = firstCopy.lastIndex(where: {$0 == 50})
var min = firstCopy.min()
var max = firstCopy.max()


////////////////////////////////////  SELECTING ELEMENTS //////////////////////////////
var part = total.prefix(3)          //slice first 3 elements
var part2 = total.prefix(upTo: 3)   //idx3 not included, test it.
part = total.suffix(3)              //slice last 3 elements
part2 = total.suffix(from: 3)       //from 3 to end


////////////////////////////////////  SELECTING ELEMENTS //////////////////////////////
var dropSome = total.dropFirst(4)       //returns subseq containing all but the first 4 elements
var dropSomeMore = total.dropLast(4)    //returns all but the last 4 elements


if dropSome.elementsEqual(dropSomeMore){
    print("hi")   
}

