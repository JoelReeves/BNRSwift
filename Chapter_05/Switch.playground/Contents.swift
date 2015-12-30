

import Cocoa

var statusCode: Int = 4041
var errorString: String = "The request failed with the error: "

switch statusCode {
case 100, 101:
    errorString += " Informational, \(statusCode)."
    
case 204:
    errorString += "Successful but no content, 204"
    
case 300...307:
    errorString += "Redirection, \(statusCode)"
    
case 400...417:
    errorString += "Client error, \(statusCode)"
    
case 500...505:
    errorString += "Server Error, \(statusCode)"
    
default:
    errorString = "\(statusCode) is not a known error code."
}

print(errorString)
