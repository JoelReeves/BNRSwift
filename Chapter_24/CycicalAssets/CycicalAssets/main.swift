//
//  main.swift
//  CycicalAssets
//
//  Created by Joel Reeves on 3/8/16.
//  Copyright © 2016 Bromance Labs. All rights reserved.
//

import Foundation

class Person: CustomStringConvertible {
    let name: String
    
    var description: String {
        return "Person(\(name))"
    }
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(self) is being deallocated")
    }
}

var bob: Person? = Person(name: "Bob")
print("created \(bob)")

bob = nil
print("the bob variable is now \(bob)")


var laptop: Asset? = Asset(name: "Shiny laptop", value: 1500.0)
var hat: Asset? = Asset(name: "Pirate hat", value: 250.0)
var backpack: Asset? = Asset(name: "Black backpack", value: 50.0)

laptop = nil
hat = nil
backpack = nil

