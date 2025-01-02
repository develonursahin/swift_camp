//
//  SettingsViewController.swift
//  FirebaseInstaClone
//
//  Created by Onur Şahin on 2.01.2025.
//

import UIKit
import Firebase
import FirebaseAuth

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logoutClicked(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            performSegue(withIdentifier: "toViewController", sender: nil)
            print("SignOut Success")
        } catch {
            print("SignOut Error")
        }
        
    }
  

}
