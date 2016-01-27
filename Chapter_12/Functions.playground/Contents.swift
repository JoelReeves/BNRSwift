import Cocoa

func printGreeting() {
    print("Hello, playground")
}

printGreeting()

// function parameter
func personalGreeting(name: String) {
    print("Hello \(name), welcome to your playground")
}

personalGreeting("Alex")


// using explicit parameter names
func divisionDescription(forNumerator num: Double, forDenominator den: Double) {
    print("\(num) divided by \(den) = \(num / den)")
}

divisionDescription(forNumerator: 9.0, forDenominator: 3.0)


// variadic parameter
func printPersonalGreetings(names: String...) {
    for name in names {
        print("Hello \(name), welcome to the playground")
    }
}

printPersonalGreetings("Batman", "Superman", "Flash", "Green Arrow")


// default parameter values
func combineNames(salutation sal: String = "", firstName first: String, lastName last: String) {
    print("Combined name: \(sal) \(first) \(last)")
}

combineNames(firstName: "Clark", lastName: "Kent")
combineNames(salutation: "Mr.", firstName: "Johnny", lastName: "Depp")


// in-out parameter
var error = "The request failed:"

func appendError(code: Int, inout toErrorString errorString: String) {
    if code == 400 {
        errorString += " bad request"
    }
}

appendError(400, toErrorString: &error)
print(error)


// returning a value from a function
func listName(salutation sal: String = "", firstName first: String, lastName last: String) -> String {
    return "Name: \(sal) \(first) \(last)"
}

print(listName(firstName: "Bob", lastName: "Hope"))


// nested functions
func areaOfTriangle(withBase base: Double, andHeight height: Double) -> Double {
    let numerator = base * height
    
    func divide() -> Double {
        return numerator / 2
    }
    
    return divide()
}

print(areaOfTriangle(withBase: 3.0, andHeight: 5.0))


// Multiple returns from a function
func sortEvenOdd(numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    var evens = [Int]()
    var odds = [Int]()
    
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    
    return (evens, odds)
}

let aBunchOfNumbers = [10, 1, 4, 3,  57, 43, 84, 27, 156, 111]
let theSortedNumbers = sortEvenOdd(aBunchOfNumbers)

print("The even numbers are: \(theSortedNumbers.evens). The odd numbers are: \(theSortedNumbers.odds)")


// optional return types
func grabMiddleName(name: (String, String?, String)) -> String? {
    return name.1
}

let middleName = grabMiddleName((("Matt", nil, "Jackson")))
if let theName = middleName {
    print(theName)
}


// exiting from a function
func greetByMiddleName(name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle else {
        print("Hey there!")
        return
    }
    print("Hey \(middleName)")
}

greetByMiddleName(("Jay", "Dangerous", "Jackson"))