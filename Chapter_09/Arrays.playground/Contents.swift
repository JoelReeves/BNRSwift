import Cocoa

//Silver Challenge

var toDoList = ["Take out garbage", "Pay bills", "cross off finished items"]
var reverseArray = [String]()

for var i = toDoList.count - 1; i >= 0; i-- {
    reverseArray.append(toDoList[i])
}

reverseArray


toDoList = toDoList.reverse()



