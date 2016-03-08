//
//  Accountant.swift
//  CycicalAssets
//
//  Created by Joel Reeves on 3/8/16.
//  Copyright © 2016 Bromance Labs. All rights reserved.
//

import Foundation

class Accountant {
    typealias NetWorthChanged = (Double) -> ()
    
    var netWorthChangedhandler: NetWorthChanged? = nil
    var netWorth: Double = 0.0 {
        didSet {
            netWorthChangedhandler?(netWorth)
        }
    }
    
    func gainedNewAsset(asset: Asset) {
        netWorth += asset.value
    }
    
    func removeAsset(asset: Asset) {
        netWorth -= asset.value
    }
}
