//
//  Zombie.swift
//  MonsterTown
//
//  Created by Joel Reeves on 1/29/16.
//  Copyright © 2016 Bromance Labs. All rights reserved.
//

import Foundation

class Zombie: Monster {
    var walksWithLimp = true
    
    final override func terrorizeTown() {
        if town?.population > 0 {
            town?.changePopulation(-10)
        } else if town?.population <= 0 {
            town?.population = 0
        }
        
        super.terrorizeTown()
    }
    
    func changeName(name: String, walksWithLimp: Bool) {
        self.name = name
        self.walksWithLimp = walksWithLimp
    }
}

