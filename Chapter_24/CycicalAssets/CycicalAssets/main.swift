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
    var assets = [Asset]()
    
    var description: String {
        return "Person(\(name))"
    }
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(self) is being deallocated")
    }
    
    func takeOwnershipOfAsset(asset: Asset) {
        asset.owner = self
        assets.append(asset)
    }
}

var bob: Person? = Person(name: "Bob")
print("created \(bob)")

var laptop: Asset? = Asset(name: "Shiny laptop", value: 1500.0)
var hat: Asset? = Asset(name: "Pirate hat", value: 250.0)
var backpack: Asset? = Asset(name: "Black backpack", value: 50.0)

bob?.takeOwnershipOfAsset(laptop!)
bob?.takeOwnershipOfAsset(hat!)

print("While Bob is alive, hat's owner is \(hat!.owner)")
bob = nil
print("the bob variable is now \(bob)")
print("After Bob is deallocated, hat's owner is \(hat!.owner)")

laptop = nil
hat = nil
backpack = nil

