//
//  Document.swift
//  VocalTextEdit
//
//  Created by Joel Reeves on 3/8/16.
//  Copyright © 2016 Bromance Labs. All rights reserved.
//

import Cocoa

class Document: NSDocument {
    
    var contents: String = ""

    override class func autosavesInPlace() -> Bool {
        return true
    }

    override func makeWindowControllers() {
        // Returns the Storyboard that contains your Document window.
        let storyboard = NSStoryboard(name: "Main", bundle: nil)
        let windowController = storyboard.instantiateControllerWithIdentifier("Document Window Controller") as! NSWindowController
        
        let viewController = windowController.contentViewController as! ViewController
        viewController.textView.string = contents
        
        self.addWindowController(windowController)
    }

    override func dataOfType(typeName: String) throws -> NSData {
        let windowController = windowControllers[0]
        let viewController = windowController.contentViewController as! ViewController
        
        let contents = viewController.textView.string ?? ""
        
        if let data = contents.dataUsingEncoding(NSUTF8StringEncoding) {
            return data
        } else {
            let userInfo = [NSLocalizedRecoverySuggestionErrorKey: "File cannot be encoded in UTF-8"]
            throw NSError(domain: "com.bromancelabs.VocalTextEdit", code: 0, userInfo: userInfo)
        }
    }

    override func readFromData(data: NSData, ofType typeName: String) throws {
        if let contents = NSString(data: data, encoding: NSUTF8StringEncoding) as? String {
            self.contents = contents
            //return true
        } else {
            let userInfo = [NSLocalizedRecoverySuggestionErrorKey: "File is not valid UTF-8"]
            throw NSError(domain: "com.bromancelabs.VocalTextEdit", code: 0, userInfo: userInfo)
        }
        
    }
}

