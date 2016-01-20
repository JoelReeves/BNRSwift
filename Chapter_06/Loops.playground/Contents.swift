

import Cocoa

// using for-in loop
for _ in 1...5 {
    for var i = 0; i <= 100; i+=2 {
        print(i)
    }
}

// using for-case loop
for _ in 1...5 {
    for case let i in 0...100 where i % 2 == 0 {
        print(i)
    }
}



