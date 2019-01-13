//
//  ViewController.swift
//  Moody
//
//  Created by James Chen on 1/12/19.
//  Copyright © 2019 James Chen. All rights reserved.
//

import UIKit

class MoodViewController: UITableViewController {

    let itemArray = ["Buy eggs", "Buy Cheese", "Buy Ham"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // TableView Datasource Methods

    override func tableView(_ tableView: UITableView, numberOfRowsInSection
        section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath:
        IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MoodItemCell",
            for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    // TableView Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath:
        IndexPath) {
        print(itemArray[indexPath.row])
    }
    
}
