//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Onur Şahin on 24.12.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var simpsons = [Simpson]()
    var choosenSimpson : Simpson?
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        let homer = Simpson(name: "Homer Simpson", job: "Nuclear Safety", image: UIImage(named: "homer")!)
        let marge = Simpson(name: "Marge Simpson", job: "Housewife", image: UIImage(named: "marge")!)
        let bart = Simpson(name: "Bart Simpson", job: "Student", image: UIImage(named: "bart")!)
        let lisa = Simpson(name: "Lisa Simpson", job: "Student", image: UIImage(named: "lisa")!)
        let maggie = Simpson(name: "Maggie Simpson", job: "Baby", image: UIImage(named: "maggie")!)
        
        simpsons.append(homer)
        simpsons.append(marge)
        simpsons.append(bart)
        simpsons.append(lisa)
        simpsons.append(maggie)
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsons[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosenSimpson = simpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsVC
            
            destinationVC.selectedSimpson = choosenSimpson
        }
    }
}

