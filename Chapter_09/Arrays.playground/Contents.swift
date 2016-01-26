import Cocoa

var bucketList = ["Climb Mt. Everest"]

bucketList.append("Fly hot air balloon to Fiji")
bucketList.append("Lord of the Rings is the best movie")
bucketList.append("Go outside")
bucketList.append("Go see the new Star Wars movie")

bucketList.removeAtIndex(4)

print("There are \(bucketList.count) items in the array")
print(bucketList[0...2])

bucketList[2] += " of all time!!!"
bucketList[0] = "Climb Mt. Kilimanjaro"

bucketList