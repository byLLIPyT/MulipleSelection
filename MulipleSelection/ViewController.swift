//
//  ViewController.swift
//  MulipleSelection
//
//  Created by Александр Уткин on 18/11/2019.
//  Copyright © 2019 Александр Уткин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var deleteButton: UIButton!
    
    var viewModel = ViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView?.allowsMultipleSelection = true
        tableView?.dataSource = viewModel
        tableView?.delegate = viewModel
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func deletePressed(_ sender: Any) {
        tableView.reloadData()
    }
    
    
}


