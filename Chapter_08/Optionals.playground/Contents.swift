import Cocoa

var errorCodeString: String?
errorCodeString = "404"

if let theError = errorCodeString, errorCodeInteger = Int(theError) {
    print("\(theError): \(errorCodeInteger)")
}
