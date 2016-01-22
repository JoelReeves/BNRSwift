import Cocoa

var errorCodeString: String?
errorCodeString = "404"

if let theError = errorCodeString, errorCodeInteger = Int(theError) where errorCodeInteger == 404 {
    print("\(theError): \(errorCodeInteger)")
}
