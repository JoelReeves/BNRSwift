import Cocoa

// Bronze Challenge

func greetByMiddleName(name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle where name.middle?.characters.count < 4 else {
        print("Hey there!")
        return
    }
    print("Hey \(middleName)")
}

greetByMiddleName(("David", "Dan", "Jackson"))