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

    var categories = [
        Category(image: "lessons-1", name: "Aksesori", desc: "Ya Aksesori-1"),
         Category(image: "brass-1", name: "Aksesori", desc: "Ya Aksesori-2"),
          Category(image: "piano-1", name: "Aksesori", desc: "Ya Aksesori-3")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.isEditing = true
      
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath)
        cell.detailTextLabel?.text = categories[indexPath.row].name
        cell.imageView?.image = UIImage(named: categories[indexPath.row].image)
            cell.textLabel?.text = categories[indexPath.row].desc
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Instrument"
    }
    
    //Ketika Cell dipilih
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(categories[indexPath.row].desc)")
    }
    
    //Reordering cell
   override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
          let object = categories[sourceIndexPath.row]
          categories.remove(at: sourceIndexPath.row)
          categories.insert(object, at: destinationIndexPath.row)
      }
    
    
}



