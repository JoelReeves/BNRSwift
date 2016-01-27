import Cocoa

// Silver Challenge

func beanSifter(groceryList list: [String]) -> (beans: [String], otherGroceries: [String]) {
    var beans = [String]()
    var otherGroceries = [String]()
    
    for item in list {
        if item.containsString("beans") {
            beans.append(item)
        } else {
            otherGroceries.append(item)
        }
    }
    
    return (beans, otherGroceries)
}

let groceryList = ["green beans", "milk", "black beans", "pinto beans", "apples"]
let result = beanSifter(groceryList: groceryList)

result.beans
result.otherGroceries