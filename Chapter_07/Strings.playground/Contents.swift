import Cocoa

let playGround = "Hello, playground"

var mutablePlayGround = "Hello, mutable playground"
mutablePlayGround += "!"

for c: Character in mutablePlayGround.characters {
    print("\(c)")
}
