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
    let accountant = Accountant()
    var assets = [Asset]()
    
    var description: String {
        return "Person(\(name))"
    }
    
    init(name: String) {
        self.name = name
        
        accountant.netWorthChangedhandler = {
            [weak self] netWorth in
            
            self?.netWorthDidChange(netWorth)
            return
        }
    }
    
    deinit {
        print("\(self) is being deallocated")
    }
    
    func takeOwnershipOfAsset(asset: Asset) {
        guard asset.owner == nil else {
            print("ERROR!!! Asset \(asset.name) is already owned by \(asset.owner!.name)")
            return
        }
        asset.owner = self
        assets.append(asset)
        accountant.gainedNewAsset(asset)
    }
    
    func giveUpOwnershipOfAsset(asset: Asset) {
        for (index, item) in assets.enumerate() {
            if item === asset {
                assets.removeAtIndex(index)
                asset.owner = nil
                accountant.removeAsset(asset)
            }
        }
    }
    
    func netWorthDidChange(netWorth: Double) {
        print("The net worth of \(self) is now \(netWorth)")
    }
}

var bob: Person? = Person(name: "Bob")
print("created \(bob)")

var jane: Person? = Person(name: "Jane")
print("created \(jane)")

var laptop: Asset? = Asset(name: "Shiny laptop", value: 1500.0)
var hat: Asset? = Asset(name: "Pirate hat", value: 250.0)
var backpack: Asset? = Asset(name: "Black backpack", value: 50.0)

bob?.takeOwnershipOfAsset(laptop!)
jane?.takeOwnershipOfAsset(laptop!)
bob?.takeOwnershipOfAsset(hat!)
bob?.giveUpOwnershipOfAsset(hat!)

print("While Bob is alive, hat's owner is \(hat!.owner)")
bob = nil
print("the bob variable is now \(bob)")
print("After Bob is deallocated, hat's owner is \(hat!.owner)")

laptop = nil
hat = nil
backpack = nil

