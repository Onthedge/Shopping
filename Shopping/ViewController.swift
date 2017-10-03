//
//  ViewController.swift
//  Shopping
//
//  Created by David Sheppeard on 11/9/17.
//  Copyright © 2017 David Sheppeard. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var items = ["Milk"]
    
    @IBOutlet weak var item: UITextField!
   
    @IBOutlet weak var myTableView: UITableView!
    @IBAction func button(_ sender: Any) {
        
        if (item.text != "")
        {
            items.append(item.text!)
            item.text = ""
            myTableView.reloadData()
            
        }
        func viewDidAppear(_ animated: Bool) {
            myTableView.reloadData()
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = items[indexPath.row]
        
     return cell
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            items.remove(at: indexPath.row)
            myTableView.reloadData()
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        item.resignFirstResponder()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

