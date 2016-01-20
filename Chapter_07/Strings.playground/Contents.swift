import Cocoa

let playGround = "Hello, playground"

var mutablePlayGround = "Hello, mutable playground"
mutablePlayGround += "!"

for c: Character in mutablePlayGround.characters {
    print("\(c)")
}

let oneCoolDude = "\u{1F60E}"
let aAcute = "\u{0061}\u{0301}"
for scalar in playGround.unicodeScalars {
    print("\(scalar.value)")
}

let aAcutePrecomposed = "\u{00E1}"
let b = (aAcute == aAcutePrecomposed)

print("aAcute: \(aAcute.characters.count); aAcutePrecomposed: \(aAcutePrecomposed.characters.count)")
