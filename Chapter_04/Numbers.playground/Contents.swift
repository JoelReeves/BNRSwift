

import Cocoa

print("The maximum Int value is \(Int.max)")
print("The minimum Int value is \(Int.min)")

print("The maximum value for a 32-bit integer is \(Int32.max)")
print("The minimum value for a 32-bit integer is \(Int32.min)")

print("The maximum UInt value is \(UInt.max)")
print("The minimum UInt value is \(UInt.min)")

print("The maximum value for a 32-bit unsigned integer is \(UInt32.max)")
print("The minimum value for a 32-bit unsigned integer is \(UInt32.min)")

let numberOfPages: Int = 10 // decalring explicitly
let numberOfChapters = 3 // decalring implicitly

let numberOfPeople: UInt = 40
let volumeAdjustment: Int32 = -1000

print(10 + 20)
print(30 * 10)

print(10 + 2 * 5)
print((10 + 2) * 5)

print(11 / 3) // 3.66666666667 prints 3. fraction part is truncated
print(11 % 3)
print(-11 % 3)

var x = 10
x++
print("x has been incremented to \(x)")
x--
print("x has been decremented to \(x)")

x += 10
print("x has had 10 added to it and is now \(x)")

let y: Int8 = 120
let z = y &+ 10 // using overflow operator
print("120 &+ 10 is \(z)")