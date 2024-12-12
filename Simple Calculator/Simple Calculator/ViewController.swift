//
//  ViewController.swift
//  Simple Calculator
//
//  Created by Onur Şahin on 12.12.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var label: UILabel!
    var resultNum : Int = 0
    
    @IBAction func sumClick(_ sender: Any) {
        
        if let firstNum = Int(firstText.text!) {
            if let secondNum = Int(secondText.text!) {
                resultNum = firstNum + secondNum
                label.text = String(resultNum)
            }
        }
        
    }
 
    
    @IBAction func minusClick(_ sender: Any) {
        if let firstNum = Int(firstText.text!) {
            if let secondNum = Int(secondText.text!) {
                 resultNum = firstNum - secondNum
                label.text = String(resultNum)
            }
        }
    }
    
    @IBAction func multiplyClick(_ sender: Any) {
        if let firstNum = Int(firstText.text!) {
            if let secondNum = Int(secondText.text!) {
                 resultNum = firstNum * secondNum
                label.text = String(resultNum)
            }
        }
    }
    @IBAction func divideClick(_ sender: Any) {
        if let firstNum = Int(firstText.text!) {
            if let secondNum = Int(secondText.text!) {
                resultNum = firstNum / secondNum
                label.text = String(resultNum)
            }
        }
    }
}

