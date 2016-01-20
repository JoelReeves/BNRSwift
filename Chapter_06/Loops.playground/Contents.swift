

import Cocoa

var myFirstInt: Int = 0

for _ in 1...5 {
    myFirstInt++
    print(myFirstInt)
}

for case let i in 1...100 where i % 3 == 0 {
    print(i)
}

for var i = 1; i < 6; ++i {
    ++myFirstInt
    print(myFirstInt)
}

