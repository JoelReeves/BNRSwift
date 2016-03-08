import Cocoa

struct Point: Equatable {
    let x: Int
    let y: Int
}

func ==(lhs: Point, rhs: Point) -> Bool {
    return (lhs.x == rhs.x) && (lhs.y == rhs.y)
}

let a = Point(x: 3, y: 4)
let b = Point(x: 3, y: 4)

let abEqual = (a == b) // now works since we definined the == operator for Points
