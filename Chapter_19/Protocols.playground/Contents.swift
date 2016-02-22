import Cocoa

func padding(amount: Int) -> String {
    var paddingString = ""
    
    for _ in 0 ..< amount {
        paddingString += " "
    }
    
    return paddingString
}

func printTable(data: [[Int]]) {
    for row in data {
        // creating empty string
        var out = ""
        
        // append each item in this row to our string
        for item in row {
            out += " \(item) |"
        }
        
        //print it
        print(out)
    }
}

let data = [
    [30, 6],
    [40, 18],
    [50, 20]
]

printTable(data)
