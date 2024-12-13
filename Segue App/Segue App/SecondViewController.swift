//
//  SecondViewController.swift
//  Segue App
//
//  Created by Onur Şahin on 13.12.2024.
//

import UIKit

class SecondViewController: UIViewController {
    var myName=""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text=myName
        
    }
    
    
    @IBOutlet weak var myLabelSecond: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
  
    
}
