//
//  Zombie.swift
//  MonsterTown
//
//  Created by Joel Reeves on 1/29/16.
//  Copyright © 2016 Bromance Labs. All rights reserved.
//

import Foundation

class Zombie: Monster {
    override class var spookyNoise: String {
        return "Brains..."
    }
    
    var walksWithLimp = true
    
    final override func terrorizeTown() {
        town?.changePopulation(-10)
        super.terrorizeTown()
    }
    
    func changeName(name: String, walksWithLimp: Bool) {
        self.name = name
        self.walksWithLimp = walksWithLimp
    }
}

