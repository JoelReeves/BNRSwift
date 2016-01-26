import Cocoa

var bucketList = ["Climb Mt. Everest"]

var newItems = ["Fly hot air balloon to Fiji",
                "Lord of the Rings is the best movie",
                "Go outside",
                "Go see the new Star Wars movie"]

bucketList += newItems

bucketList.removeAtIndex(4)

print("There are \(bucketList.count) items in the array")
print("bucketList capacity \(bucketList.capacity)")
print(bucketList[0...2])

bucketList[2] += " of all time!!!"
bucketList[0] = "Climb Mt. Kilimanjaro"
bucketList.insert("Go to Hawaii", atIndex: 2)

bucketList

// not equal because order of items and text is different
var arrayNotEqual = ["Go outside!",
                        "Fly hot air balloon to Fiji",
                        "Go to Hawaii",
                        "Lord of the Rings is the best movie of all time!",
                        "Climb Mt. Kilimanjaro"]

var arrayEqual = ["Climb Mt. Kilimanjaro",
                    "Fly hot air balloon to Fiji",
                    "Go to Hawaii",
                    "Lord of the Rings is the best movie of all time!!!",
                    "Go outside"]

let notEqual = (bucketList == arrayNotEqual)
let equal = (bucketList == arrayEqual)

let lunches = ["Pizza",
                "Chinese food",
                "Sushi"]

var arrayInts = [Int](count: 10, repeatedValue: 0)

for var i = 1; i < 11; i++ {
    arrayInts.append(i)
}


