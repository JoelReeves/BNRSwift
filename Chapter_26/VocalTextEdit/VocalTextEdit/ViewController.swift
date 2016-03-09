//
//  ViewController.swift
//  VocalTextEdit
//
//  Created by Joel Reeves on 3/8/16.
//  Copyright © 2016 Bromance Labs. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSSpeechSynthesizerDelegate {
    
    let speechSynthesizer = NSSpeechSynthesizer()
    
    @IBOutlet weak var progressBar: NSProgressIndicator!
    @IBOutlet weak var speakButton: NSButton!
    @IBOutlet weak var stopButton: NSButton!
    @IBOutlet var textView: NSTextView!
    
    var contents: String? {
        get {
            return textView.string
        }
        set {
            textView.string = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stopButton.enabled = false
        progressBar.displayedWhenStopped = false
        speechSynthesizer.delegate = self
    }
    
    func speechSynthesizer(sender: NSSpeechSynthesizer, didFinishSpeaking finishedSpeaking: Bool) {
        speakButton.enabled = true
        stopButton.enabled = false
    }
    
    @IBAction func speakButtonClicked(sender: NSButton) {
        speakButton.enabled = false
        stopButton.enabled = true
        
        if let contents = textView.string where !contents.isEmpty {
            speechSynthesizer.startSpeakingString(contents)
        } else {
            speechSynthesizer.startSpeakingString("The document is empty")
        }
    }
    
    @IBAction func stopButtonClicked(sender: NSButton) {
        speechSynthesizer.stopSpeaking()
    }
}

