import Cocoa

func greetName(name: String, withGreeting greeting: String) -> String {
    return "\(greeting) \(name)"
}

let personalGreeting = greetName("Matt", withGreeting: "Hello")
print(personalGreeting)



func greetingForName(name: String) -> (String) -> String {
    func greeting(greeting: String) -> String {
        return "\(greeting) \(name)"
    }
    return greeting
}

let greeterFunction = greetingForName("Matt")
let theGreeting = greeterFunction("Hello")
print(theGreeting)


func greeting(greeting: String)(name: String) -> String {
    return "\(greeting) \(name)"
}

let friendlyGreeting = greeting("Hello, ")
let newGreeting = friendlyGreeting(name: "Matt")
print(newGreeting)


struct Person {
    var firstName = "Matt"
    var lastName = "Mathias"
    
    mutating func changename(fn: String, ln: String) {
        firstName = fn
        lastName = ln
    }
}

var p = Person()
let changer = Person.changename
p.changename("John", ln: "Gallagher")
p.firstName
p.lastName
