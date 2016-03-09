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
    
    var delta: Double = 0.0
    var length: Int = 0
    var duration: Int = 0
    
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
        progressBar.incrementBy(-100.0)
        progressBar.displayedWhenStopped = false
    }
    
    func speechSynthesizer(sender: NSSpeechSynthesizer, willSpeakWord characterRange: NSRange, ofString string: String) {
        progressBar.incrementBy(self.delta)
    }
    
    @IBAction func speakButtonClicked(sender: NSButton) {
        speakButton.enabled = false
        stopButton.enabled = true
        
        if let contents = textView.string where !contents.isEmpty {
            self.length = contents.characters.count
            self.duration = length / 6
            self.delta = Double(100 / self.duration)
            
            progressBar.minValue = 0.0
            progressBar.maxValue = 100.0
            
            speechSynthesizer.startSpeakingString(contents)
        } else {
            self.duration = 4
            self.delta = 25.0
            
            speechSynthesizer.startSpeakingString("The document is empty")
        }
        
        print("Length: \(self.length), Duration: \(self.duration), Delta: \(self.delta)")
    }
    
    @IBAction func stopButtonClicked(sender: NSButton) {
        speechSynthesizer.stopSpeaking()
    }
}

