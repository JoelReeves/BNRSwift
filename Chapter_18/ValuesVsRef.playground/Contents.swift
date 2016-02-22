import Cocoa

var str = "Hello, playground"

var playgroundGreeting = str // giving copy of str's value to playgroundGreeting
playgroundGreeting += "! How are you today?"
str


class GreekGod {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

let hecate = GreekGod(name: "Hecate")
let anotherHecate = hecate

// assigning a class to a variable/constant causes the variable/constant to get a reference to the instance
// changing one will change the other

anotherHecate.name = "AnotherHecate"
anotherHecate.name
hecate.name

