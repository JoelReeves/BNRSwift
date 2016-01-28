import Cocoa

// Silver Challenge

enum ShapeDimensions {
    case Point
    case Square(Double)
    case Rectangle(width: Double, height: Double)
    case RightTriangle(side1: Double, side2: Double, side3: Double)
    
    func area() -> Double {
        switch self {
        case .Point:
            return 0
        case let .Square(side):
            return side * side
        case let .Rectangle(width: w, height: h):
            return w * h
        case let .RightTriangle(side1: s1, side2: s2, side3: s3):
            return s1 + s2 + s3
        }
    }
}

var squareShape = ShapeDimensions.Square(10.0)
var rectShape = ShapeDimensions.Rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.Point
var rightTriangleShape = ShapeDimensions.RightTriangle(side1: 10.0, side2: 15.0, side3: 17.0)

print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")
print("point's area = \(pointShape.area())")
print("right triangle's area = \(rightTriangleShape.area())")