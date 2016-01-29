//
//  main.swift
//  MonsterTown
//
//  Created by Joel Reeves on 1/28/16.
//  Copyright © 2016 Bromance Labs. All rights reserved.
//

import Foundation

var myTown = Town()
myTown.changePopulation(500)
myTown.printTownDescription()


let gm = Monster()
gm.town = myTown
gm.terrorizeTown()


let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printTownDescription()
fredTheZombie.changeName("Fred the Zombie", walksWithLimp: false)

let vampire = Vampire()
vampire.town = myTown
vampire.terrorizeTown()
vampire.town?.printTownDescription()


