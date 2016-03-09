//
//  ViewController.swift
//  iTahDoodle
//
//  Created by Joel Reeves on 3/9/16.
//  Copyright © 2016 Bromance Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var itemTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    let todoList = TodoList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func insertButtonPressed(sender: UIButton) {
        guard let text = itemTextField.text else {
            return
        }
        todoList.addItem(text)
    }

}

