//
//  ViewController.swift
//  ThreadingProject
//
//  Created by Onur Şahin on 9.01.2025.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var imageView: UIImageView!
    
    let urlStrings = [
        "https://plus.unsplash.com/premium_photo-1672762542894-caaa8d4f0a77?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8NGslMjBsYW5kc2NhcGV8ZW58MHx8MHx8fDA%3D",
        "https://images.pexels.com/photos/1525041/pexels-photo-1525041.jpeg?cs=srgb&dl=pexels-francesco-ungaro-1525041.jpg&fm=jpg"
    ]
    var data = Data()
    var tracker = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        
        
        
        DispatchQueue.global().async{
            self.data = try! Data(contentsOf: URL(string: self.urlStrings[self.tracker])!)
            
            DispatchQueue.main.async {
                self.imageView.image = UIImage(data: self.data)
            }
        }
        
        self.navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.compose, target: self, action: #selector(changeImage))
    }
    
    @objc func changeImage () {
        if tracker == 0 {
            tracker += 1
        } else {
            tracker -= 1
        }
        DispatchQueue.global().async{
            self.data = try! Data(contentsOf: URL(string: self.urlStrings[self.tracker])!)
            
            DispatchQueue.main.async {
                self.imageView.image = UIImage(data: self.data)
            }
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Threading Test"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 25
    }
}

