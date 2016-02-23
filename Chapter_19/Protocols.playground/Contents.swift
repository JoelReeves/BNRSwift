import Cocoa

func padding(amount: Int) -> String {
    var paddingString = ""
    
    for _ in 0 ..< amount {
        paddingString += " "
    }
    
    return paddingString
}

func printTable(rowLabels: [String], data: [[Int]]) {
    // create an array of the width of each row label
    let rowLabelWidths = rowLabels.map { $0.characters.count }
    
    // determine the length of the longest row label
    guard let maxRowLabelWidth = rowLabelWidths.maxElement() else {
        return
    }
    
    for (i, row) in data.enumerate() {
        // pad the row label out so that they are all the same length
        let paddingAmount = maxRowLabelWidth - rowLabelWidths[i]
        var out = rowLabels[i] + padding(paddingAmount) + " |"
        
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

let rowLabels = ["Joe", "Karen", "Fred"]
printTable(rowLabels, data: data)
