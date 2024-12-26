//
//  ListViewController.swift
//  TravelBook
//
//  Created by Onur Şahin on 26.12.2024.
//

import UIKit
import CoreData

class ListViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    var titles = [String]()
    var ids = [UUID]()
    var chosentitle = ""
    var chosenTitleID : UUID?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
        tableView.delegate = self
        tableView.dataSource = self
        
        getData()


    }
    
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(getData), name: NSNotification.Name("newPlace"), object: nil)
    }
    
    @objc func getData (){
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Places")
        request.returnsObjectsAsFaults = false
        
        do {
            let results = try context.fetch(request)
            if results.count > 0 {
                
                self.titles.removeAll(keepingCapacity: false)
                self.ids.removeAll(keepingCapacity: false)
                
                for result in results as! [NSManagedObject]{
                    
                    if let title = result.value(forKey: "title") as? String {
                        
                        self.titles.append(title)
                        
                    }
                    
                    if let  id = result.value(forKey: "id") as? UUID {
                        self.ids.append(id)
                    }
                    
                    tableView.reloadData()
                }
            }
            
        } catch {
            print("error")
        }
            
    }
        
  

@objc func addButtonClicked() {
    chosentitle = ""
    
    performSegue(withIdentifier: "toViewController", sender: nil)
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = titles[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosentitle = titles[indexPath.row]
        chosenTitleID = ids[indexPath.row]
        performSegue(withIdentifier: "toViewController", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier ==  "toViewController"{
            let destinationVC = segue.destination as! ViewController
            destinationVC.selectedTitle = chosentitle
            destinationVC.selectedTitleID = chosenTitleID
        }
            
    }
}
