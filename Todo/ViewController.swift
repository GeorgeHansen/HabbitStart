//
//  ViewController.swift
//  Todo
//
//  Created by Nicholas Hansen on 02/03/17.
//  Copyright © 2017 Nicholas Hansen. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var dateLabel: UILabel!

    @IBOutlet weak var todoTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        todoTableView.delegate = self
        
        //Current Date
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        //Set Date in UI
        dateLabel.text = formatter.string(from: date)
    
        
        
  
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath)
        
        cell.contentView.backgroundColor = UIColor.green
        print("row selected " + String(describing: indexPath))
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Think I need to set the cell color here.
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell")
        return cell!
    }
    
//    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//        cell.backgroundColor = UIColor.clear
//    }

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

