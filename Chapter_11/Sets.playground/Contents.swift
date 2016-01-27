import Cocoa

var groceryBag: Set = ["Apples", "Oranges", "Pears"]

for food in groceryBag {
    print(food)
}

print("groceryBag contains \(groceryBag.count) items")

groceryBag.insert("Watermelon")

groceryBag.sort()

let hasBananas = groceryBag.contains("Bananas")

let friendsGroceryBag: Set = ["Bananas", "Cereal", "Milk", "Oranges"]
let commonGroceryBag = groceryBag.union(friendsGroceryBag)

let roommatesGroceryBag: Set = ["Apples", "Bananas", "Cereal", "Toothpaste"]
let itemsToReturn = commonGroceryBag.intersect(roommatesGroceryBag)

let yourSecondBag: Set = ["Berries", "Yogurt"]
let roommatesSecondBag: Set = ["Grapes", "Honey"]
let disjoint = yourSecondBag.isDisjointWith(roommatesSecondBag)
