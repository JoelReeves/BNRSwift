import Cocoa

func padding(amount: Int) -> String {
    var paddingString = ""
    
    for _ in 0 ..< amount {
        paddingString += " "
    }
    
    return paddingString
}

func printTable(rowLabels: [String], columnLabels: [String], data: [[Int]]) {
    // create an array of the width of each row label
    let rowLabelWidths = rowLabels.map { $0.characters.count }
    
    // determine the length of the longest row label
    guard let maxRowLabelWidth = rowLabelWidths.maxElement() else {
        return
    }
    
    // create first row containing column headers
    var firstRow: String = padding(maxRowLabelWidth) + " |"
    
    // Also keeping track of the widths of each column
    var columnWidths = [Int]()
    
    for columnLabel in columnLabels {
        let columnHeader = " \(columnLabel) |"
        firstRow += columnHeader
        columnWidths.append(columnHeader.characters.count)
    }
    
    print(firstRow)
    
    for (i, row) in data.enumerate() {
        // pad the row label out so that they are all the same length
        let paddingAmount = maxRowLabelWidth - rowLabelWidths[i]
        var out = rowLabels[i] + padding(paddingAmount) + " |"
        
        // append each item in this row to our string
        for (j, item) in row.enumerate() {
            let itemString = " \(item) |"
            let paddingAmount = columnWidths[j] - itemString.characters.count
            out += padding(paddingAmount) + itemString
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
let columnLabels = ["Age", "Years of Experience"]
printTable(rowLabels, columnLabels: columnLabels, data: data)
