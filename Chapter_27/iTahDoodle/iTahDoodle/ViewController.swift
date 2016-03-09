//
//  ViewController.swift
//  iTahDoodle
//
//  Created by Joel Reeves on 3/9/16.
//  Copyright © 2016 Bromance Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var itemTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    let todoList = TodoList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = todoList
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        print("Deleted row: \(indexPath.row)")
        todoList.deleteItem(indexPath.row)
        tableView.reloadData()
        return indexPath
    }

    @IBAction func insertButtonPressed(sender: UIButton) {
        guard let text = itemTextField.text where text != "" else {
            return
        }
        todoList.addItem(text)
        tableView.reloadData()
        itemTextField.text = ""
    }

}

