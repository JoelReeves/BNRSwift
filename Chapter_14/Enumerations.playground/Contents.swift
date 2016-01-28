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


// methods
enum Lightbulb {
    case On
    case Off
    
    func surfaceTemperatureForAmbientTemperature(ambient: Double) -> Double {
        switch self {
        case .On:
            return ambient + 150.0
        case .Off:
            return ambient
        }
    }
    
    mutating func toggle() {
        switch self {
        case .On:
            self = .Off
        case .Off:
            self = .On
        }
    }
}

var bulb = Lightbulb.On
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperatureForAmbientTemperature(ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

bulb.toggle()
bulbTemperature = bulb.surfaceTemperatureForAmbientTemperature(ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")


// associated values
enum ShapeDimensions {
    case Point
    case Square(Double)
    case Rectangle(width: Double, height: Double)
    
    func area() -> Double {
        switch self {
        case .Point:
            return 0
        case let .Square(side):
            return side * side
        case let .Rectangle(width: w, height: h):
            return w * h
        }
    }
}

var squareShape = ShapeDimensions.Square(10.0)
var rectShape = ShapeDimensions.Rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.Point

print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")
print("point's area = \(pointShape.area())")