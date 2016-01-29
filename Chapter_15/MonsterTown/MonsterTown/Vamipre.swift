//
//  Vamipre.swift
//  MonsterTown
//
//  Created by Joel Reeves on 1/29/16.
//  Copyright © 2016 Bromance Labs. All rights reserved.
//

import Foundation

class Vampire: Monster {
    var vampireArray = [Vampire]()
    
    override func terrorizeTown() {
        if town?.population > 0 {
            town?.changePopulation(-1)
            
            let vampire = Vampire()
            vampireArray.append(vampire)
            print("there are \(vampireArray.count) vampires in town!")
        } else {
            print("the town is empty!")
        }
        
        super.terrorizeTown()
    }
}