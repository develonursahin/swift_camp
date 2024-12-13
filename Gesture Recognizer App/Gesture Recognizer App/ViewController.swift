//
//  ViewController.swift
//  Gesture Recognizer App
//
//  Created by Onur Şahin on 13.12.2024.
//

import UIKit

class ViewController: UIViewController {
var isHomer = true
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.isUserInteractionEnabled=true
        let gestureRecognizer = UIGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
    }

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    @objc func changePic(){
        print("tapped")
        if isHomer == true {
            imageView.image=UIImage(named: "marge")
            label.text="Marge"
            isHomer = false
        } else {
            imageView.image=UIImage(named: "homer")
            label.text="Homer"
            isHomer = true
           
        }
    }
    
}

