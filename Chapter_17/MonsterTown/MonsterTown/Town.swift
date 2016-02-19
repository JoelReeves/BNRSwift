//
//  Town.swift
//  MonsterTown
//
//  Created by Joel Reeves on 1/29/16.
//  Copyright © 2016 Bromance Labs. All rights reserved.
//

import Foundation

struct Town {
    let region: String
    var population: Int {
        didSet(oldPopulation) {
            print("The population has changed to \(population) from \(oldPopulation)")
        }
    }
    var numberOfStoplights: Int
    
    init(region: String, population: Int, stopLights: Int) {
        self.region = region
        self.population = population
        numberOfStoplights = stopLights
    }
    
    enum Size {
        case Small
        case Medium
        case Large
    }
    
    var townSize: Size {
        get {
            switch self.population {
            case 0...10000:
                return Size.Small
                
            case 10001...100000:
                return Size.Medium
                
            default:
                return Size.Large
            }
        }
    }
    
    func printTownDescription() {
        print("Population: \(population); number of stoplights: \(numberOfStoplights); region: \(region)")
    }
    
    mutating func changePopulation(amount: Int) {
        population += amount
    }
}
