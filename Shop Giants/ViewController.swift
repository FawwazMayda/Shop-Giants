//
//  ViewController.swift
//  Shop Giants
//
//  Created by David Gunawan on 30/03/20.
//  Copyright © 2020 David Gunawan. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var chosen = 0

    @IBOutlet weak var editButton: UIBarButtonItem!
    var categories = [
        Category(image: "lessons-1", name: "lessons", desc: "Ya Aksesori-1"),
          Category(image: "piano-1", name: "piano", desc: "Ya Aksesori-3"),
          Category(image: "percussions-1", name: "percussions", desc: "Ya Aksesori-4"),
          Category(image: "brass-1", name: "brass", desc: "Ya Aksesori-5"),
          Category(image: "accesories-1", name: "accesories", desc: "Ya Aksesori-6")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func edit(_ sender: UIBarButtonItem) {
        if editButton.title=="Edit" {
            editButton.title="Done"
            self.tableView.isEditing=true
        } else if editButton.title=="Done" {
            editButton.title="Edit"
            self.tableView.isEditing=false
        }
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath)
        cell.detailTextLabel?.text = categories[indexPath.row].desc
        cell.textLabel?.text = categories[indexPath.row].name
        cell.imageView?.image = UIImage(named: categories[indexPath.row].image)
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Instrument"
    }
    
    //Ketika Cell dipilih
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosen = indexPath.row
        self.performSegue(withIdentifier: AppConst.CategoryToProductSegue, sender: self)
    }
    
    //Reordering cell
   override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
          let object = categories[sourceIndexPath.row]
          categories.remove(at: sourceIndexPath.row)
          categories.insert(object, at: destinationIndexPath.row)
      }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier==AppConst.CategoryToProductSegue) {
            let VC = segue.destination as! ProductVC
            VC.products = categories[chosen].product
        }
    }
}


