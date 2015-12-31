

import Cocoa

var statusCode: Int = 418
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
    
case let unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 505:
    errorString = "\(unknownCode) is not a known error code."
    
default:
    errorString = "Unexpected error occurred."
}

let error = (code: statusCode, error: errorString)
error.code
error.error
print(error)

let firstErrorCode = 404
let secondErrorCode = 200
let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes {
case (404, 404):
    print("No items found")
    
case (404, _):
    print("First item not found")
    
case (_, 404):
    print("Second item not found")
    
default:
    print("All items found")
}

print(errorCodes)


let age = 25

if case 18...35 = age {
    print("Age is in the correct range!")
}

if case 18...35 = age where age >= 21 {
    print("Correct drinking age!!!!")
}


