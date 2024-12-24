//
//  ViewController.swift
//  ArtBookApp
//
//  Created by Onur Şahin on 24.12.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()


        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target:self, action: #selector(addButtonClicked))
    }

    

@objc func addButtonClicked(){
    performSegue(withIdentifier: "toDetailsVC", sender: nil)
        }

}

