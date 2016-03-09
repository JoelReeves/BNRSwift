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

extension TodoList: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        let item = items[indexPath.row]
        
        cell.textLabel!.text = item
        
        return cell
    }
}
