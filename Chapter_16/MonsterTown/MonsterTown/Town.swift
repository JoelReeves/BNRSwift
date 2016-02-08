//
//  Town.swift
//  MonsterTown
//
//  Created by Joel Reeves on 1/29/16.
//  Copyright © 2016 Bromance Labs. All rights reserved.
//

import Foundation

struct Town {
    let region = "South"
    var population = 5422
    var numberOfStoplights = 4
    
    enum Size {
        case Small
        case Medium
        case Large
    }
    
    lazy var townSize: Size = {
        switch self.population {
        case 0...10000:
            return Size.Small
            
        case 10001...100000:
            return Size.Medium
            
        default:
            return Size.Large
        }
    }()
    
    func printTownDescription() {
        print("Population: \(population); number of stoplights: \(numberOfStoplights)")
    }
    
    mutating func changePopulation(amount: Int) {
        population += amount
    }
}
