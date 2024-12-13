//
//  ViewController.swift
//  Alert Project
//
//  Created by Onur Şahin on 13.12.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var usernameText: UITextField!
    
    
    @IBOutlet weak var passwordText: UITextField!
    
    
    @IBOutlet weak var password2Text: UITextField!
    
    @IBAction func signupClicked(_ sender: Any) {
        let title="Error!"
        let message=""
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        if usernameText?.text == "" {
            alert.message = "Please enter a username!"
            
        } else if passwordText.text == "" {
            alert.message = "Please enter a password!"
             
        } else if password2Text.text == "" {
            alert.message = "Please enter again password!"
             
        } else if passwordText.text != password2Text.text{
            alert.message = "Not matched passwords!"
             
        }else{
            alert.message = "Signup is success!"
            alert.title="Success!"
        }
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            print("Button clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
}

