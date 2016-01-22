import Cocoa

var errorCodeString: String?
var errorDescription: String?
errorCodeString = "404"

if let theError = errorCodeString, errorCodeInteger = Int(theError) where errorCodeInteger == 404 {
    errorDescription = ("\(errorCodeInteger + 200): the requested resource was not found.")
}

var upCaseErrorDescription = errorDescription?.uppercaseString
errorDescription

upCaseErrorDescription?.appendContentsOf(" PLEASE TRY AGAIN")
upCaseErrorDescription

let description = errorDescription ?? "No Error"
