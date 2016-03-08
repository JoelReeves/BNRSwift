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

