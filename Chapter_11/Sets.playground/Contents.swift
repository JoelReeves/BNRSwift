import Cocoa

var groceryBag: Set = ["Apples", "Oranges", "Pears"]

for food in groceryBag {
    print(food)
}

print("groceryBag contains \(groceryBag.count) items")

groceryBag.insert("Watermelon")

groceryBag.sort()

let hasBananas = groceryBag.contains("Bananans")
