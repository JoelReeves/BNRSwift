import Cocoa

struct Point {
    let x: Int
    let y: Int
}

let a = Point(x: 3, y: 4)
let b = Point(x: 3, y: 4)

let abEqual = (a == b) // generates error because Point struct doesn't know how to test for equality
