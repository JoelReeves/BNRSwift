import Cocoa

// Silver Challenge

var myState = ["1st County":[10000, 10001, 10002, 10003, 10004],
                "2nd County":[11000, 11001, 11002, 11003, 11004],
                "3rd County":[12000, 12001, 12002, 12003, 12004]]


print("myState has the following zip codes: \(Array(myState.values.flatten()))")
