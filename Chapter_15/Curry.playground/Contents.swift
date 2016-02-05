import Cocoa

func greetName(name: String, withGreeting greeting: String) -> String {
    return "\(greeting) \(name)"
}

let personalGreeting = greetName("Matt", withGreeting: "Hello")
print(personalGreeting)