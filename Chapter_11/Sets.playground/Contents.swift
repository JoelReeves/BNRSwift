import Cocoa

// Silver Challenge

var groceryBag: Set = ["Apples", "Oranges", "Pears"]

let friendsGroceryBag: Set = ["Bananas", "Cereal", "Milk", "Oranges"]
groceryBag.unionInPlace(friendsGroceryBag)

let roommatesGroceryBag: Set = ["Apples", "Bananas", "Cereal", "Toothpaste"]
groceryBag.intersectInPlace(roommatesGroceryBag)
