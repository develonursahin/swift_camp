//
//  ViewController.swift
//  Timer App
//
//  Created by Onur Şahin on 13.12.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var counter = 10

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Time: \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
    }
    

    
    @IBOutlet weak var label: UILabel!
    
    @objc func timerFunc(){
        counter -= 1
        label.text = "Time: \(counter)"
        
        if counter == 0{
            label.text = "Time is over"
            timer.invalidate()
        }
    }
    
    @IBAction func printTime(_ sender: Any) {
        
        print("Time: \(counter)")
    }
}

