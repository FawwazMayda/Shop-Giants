//
//  ViewController.swift
//  Shop Giants
//
//  Created by David Gunawan on 30/03/20.
//  Copyright © 2020 David Gunawan. All rights reserved.
//

import UIKit


struct Category {
    let image : String
    let name : String
    let desc : String
}
class ViewController: UITableViewController {

    var categories = [Category]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = "Section: \(indexPath.section) Row:\(indexPath.row)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    
}



