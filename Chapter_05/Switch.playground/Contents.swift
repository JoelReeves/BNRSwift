

import Cocoa

var statusCode: Int = 404
var errorString: String = "The request failed with the error:"

switch statusCode {
case 400, 401, 403, 404:
    errorString = "There was something wrong with the request."
    fallthrough // control transfer statement. used to go to the next case directly below
    
default:
    errorString += " Please review the request and try again."
}