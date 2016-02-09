//
//  Mayor.swift
//  MonsterTown
//
//  Created by Joel Reeves on 2/9/16.
//  Copyright © 2016 Bromance Labs. All rights reserved.
//

import Foundation

struct Mayor {
    private var anxietyLevel = 0
    
    mutating func decreasePopulationSpeech() {
        print("I'm deeply saddened to hear about this latest tragedy. I promise that my office is looking into the nature of this rash of violence")
        anxietyLevel += 1
        print("Current axienty level: \(anxietyLevel)")
    }
}