//
//  ViewController.swift
//  VocalTextEdit
//
//  Created by Joel Reeves on 3/8/16.
//  Copyright © 2016 Bromance Labs. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var textView: NSTextView!
    
    @IBAction func speakButtonClicked(sender: NSButton) {
        print("I should speak \(textView.string)")
    }
    
    @IBAction func stopButtonClicked(sender: NSButton) {
        print("The stop button was clicked")
    }
}

