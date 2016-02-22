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



struct Pantheon {
    let chiefGod: GreekGod
    let dateCreated = NSDate()
}

let pantheon = Pantheon(chiefGod: hecate)
let zeus = GreekGod(name: "Zeus")
zeus.name = "Zeus Jr."
zeus.name

pantheon.chiefGod.name
let greekPantheon = pantheon
hecate.name = "Trivia"
greekPantheon.chiefGod.name
greekPantheon.dateCreated



let athena = GreekGod(name: "Athena")
let gods = [athena, hecate, zeus]

let godsCopy = gods
gods.last?.name = "Jupiter"
gods
godsCopy


let x = 1
let y = 1
x == y //equality operator


athena === hecate // identity operator