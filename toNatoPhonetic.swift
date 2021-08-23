func toNato(_ words: String) -> String {
    let nato:[Character:String] = 
    ["a":"Alpha ", "b":"Bravo ", "c":"Charlie ", "d":"Delta ", "e":"Echo ",
    "f":"Foxtrot ", "g":"Golf ", "h":"Hotel ", "i":"India ", "j":"Juliett ",
    "k":"Kilo ", "l":"Lima ", "m":"Mike ", "n":"November ", "o":"Oscar ", 
    "p":"Papa ", "q":"Quebec ", "r":"Romeo ", "s":"Sierra ", "t":"Tango ",
    "u":"Uniform ", "v":"Victor ", "w":"Whiskey ", "x":"Xray ", "y":"Yankee ",
    "z":"Zulu "]
    
    let lowerString = words.lowercased()
    let wordArray = Array.init(lowerString)
    var result = ""
    for char in wordArray{
        if "?!,.".contains(char){
            result.append(char)
            result.append(" ")
            continue
        } else if char == " "{
            continue
        }
        result.append(contentsOf: nato[char]!)
        print(nato[char]!, type(of: nato[char]))
        
    }
    result.removeLast()    
    return result
}