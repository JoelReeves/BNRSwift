import Cocoa

var bucketList = ["Climb Mt. Everest"]

var newItems = ["Fly hot air balloon to Fiji",
                "Lord of the Rings is the best movie",
                "Go outside",
                "Go see the new Star Wars movie"]

for item in newItems {
    bucketList.append(item)
}

bucketList.removeAtIndex(4)

print("There are \(bucketList.count) items in the array")
print(bucketList[0...2])

bucketList[2] += " of all time!!!"
bucketList[0] = "Climb Mt. Kilimanjaro"

bucketList
