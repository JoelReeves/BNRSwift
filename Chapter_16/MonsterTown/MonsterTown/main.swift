//
//  main.swift
//  MonsterTown
//
//  Created by Joel Reeves on 1/28/16.
//  Copyright © 2016 Bromance Labs. All rights reserved.
//

import Foundation

var myTown = Town()

let ts = myTown.townSize
print("Original town size: \(ts)")

myTown.changePopulation(1000000)
print("Town size: \(myTown.townSize), population: \(myTown.population)")

myTown.printTownDescription()

let gm = Monster()
gm.town = myTown
gm.terrorizeTown()


let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printTownDescription()
fredTheZombie.changeName("Fred the Zombie", walksWithLimp: false)


print("Victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("Victim pool: \(fredTheZombie.victimPool); population: \(fredTheZombie.town?.population)")