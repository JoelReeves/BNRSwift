import Cocoa

enum TextAlignment: Int {
    case Left = 20 // specifying raw values
    case Right = 30
    case Center = 40
    case Justify = 50
}

var alignment = TextAlignment.Justify

print("Left has raw value \(TextAlignment.Left.rawValue)")
print("Right has raw value \(TextAlignment.Right.rawValue)")
print("Center has raw value \(TextAlignment.Center.rawValue)")
print("Justify has raw value \(TextAlignment.Justify.rawValue)")
print("The alignment variable has raw value \(alignment.rawValue)")

switch alignment {
case .Left:
    print("left aligned")
case .Right:
    print("right aligned")
case .Center:
    print("center aligned")
case .Justify:
    print("justified")
}

// converting raw values to enums
let myRawValue = 20

if let myAlignment = TextAlignment(rawValue: myRawValue) {
    print("successfully converted \(myRawValue) into a TextAlignment")
} else {
    print("\(myRawValue) has no corresponding TextAlignment case")
}


// creating enum with strings
enum ProgrammingLanguage: String {
    case Swift // if you don't specify a value, Swift uses the case name for the value
    case ObjC = "Objective-C"
    case Java
    case C
    case Kotlin
}

let myFavoriteLanguage = ProgrammingLanguage.Java
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")