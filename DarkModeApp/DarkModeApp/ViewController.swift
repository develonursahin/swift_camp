//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Onur Şahin on 27.12.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Telefon ayarını pas geçerek verilen modu uygular.
       // overrideUserInterfaceStyle = .light

    }
    override func viewWillAppear(_ animated: Bool) {
        let  userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if  userInterfaceStyle   == .dark{
            changeButton.tintColor = .white
        } else {
            changeButton.tintColor = .blue
        }
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let  userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if  userInterfaceStyle   == .dark{
            changeButton.tintColor = .white
        } else {
            changeButton.tintColor = .blue
        }
    }
}

