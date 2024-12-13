//
//  ViewController.swift
//  Birthday Note Taker
//
//  Created by Onur Şahin on 13.12.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        //Casting - as? / as! force casting
        //Any
        
        if let newName = storedName as? String{
         
            nameLabel.text="Name: \(newName)"
        }
        if let newBirthday = storedBirthday as? String{
          
            birthdayLabel.text="Birthday: \(newBirthday)"
        }
  
        
    }
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var birthday: UITextField!
    
    @IBAction func save(_ sender: Any) {
        UserDefaults.standard.set(name.text!, forKey: "name")
        UserDefaults.standard.set(birthday.text!, forKey: "birthday")
        nameLabel.text = "Name: \(name.text!)"
        birthdayLabel.text = "Birthday: \(birthday.text!)"
    }
    
    @IBAction func deleteClicked(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text="Name: "
        }
        if(storedBirthday as? String ) != nil {
            UserDefaults.standard.removeObject(forKey:  "birthday")
            birthdayLabel.text="Birthday: "
        }
      
    }
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
        
    
}

