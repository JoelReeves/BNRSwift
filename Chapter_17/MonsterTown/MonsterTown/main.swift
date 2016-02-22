//
//  main.swift
//  MonsterTown
//
//  Created by Joel Reeves on 1/28/16.
//  Copyright © 2016 Bromance Labs. All rights reserved.
//

import Foundation

var myTown = Town(population: 10000, stopLights: 6)

let ts = myTown.townSize
print("Original town size: \(ts)")

myTown.changePopulation(1000000)
print("Town size: \(myTown.townSize), population: \(myTown.population)")

myTown.printTownDescription()

let gm = Monster(town: myTown, monsterName: "MyMonster")
gm.town = myTown
gm.terrorizeTown()


var fredTheZombie: Zombie? = Zombie(limp: false, fallingApart: false, town: myTown, monsterName: "Fred")
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printTownDescription()
fredTheZombie?.changeName("Fred the Zombie", walksWithLimp: false)

var convenientZombie = Zombie(limp: true, fallingApart: false)

print("Victim pool: \(fredTheZombie?.victimPool)")
fredTheZombie?.victimPool = 500
print("Victim pool: \(fredTheZombie?.victimPool)")
print(Zombie.spookyNoise)

if Zombie.isTerrifying {
    print("Run away!")
}

fredTheZombie = nil