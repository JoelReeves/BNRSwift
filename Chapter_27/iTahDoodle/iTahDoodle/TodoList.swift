//
//  TodoList.swift
//  iTahDoodle
//
//  Created by Joel Reeves on 3/9/16.
//  Copyright © 2016 Bromance Labs. All rights reserved.
//

import UIKit

class TodoList: NSObject {
    private var items: [String] = []
    
    func addItem(item: String) {
        items.append(item)
    }
}
