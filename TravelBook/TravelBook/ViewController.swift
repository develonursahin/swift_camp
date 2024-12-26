//
//  ViewController.swift
//  TravelBook
//
//  Created by Onur Şahin on 26.12.2024.
//

import UIKit
import MapKit
import CoreLocation
import CoreData

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    
    @IBOutlet weak var mapView: MKMapView!
    var locationManager = CLLocationManager()
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var noteText: UITextField!
    var chosenLatitude = Double()
    var chosenLongitude = Double()

    override func viewDidLoad() {
        super.viewDidLoad()

        mapView.delegate = self
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        let gestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(chooseLocation(gestureRecognizer: )))
        gestureRecognizer.minimumPressDuration = 2
        mapView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func chooseLocation(gestureRecognizer :  UILongPressGestureRecognizer){
        
        if  gestureRecognizer.state == .began{
            
            let touchedPoint = gestureRecognizer.location(in: self.mapView)
            let touchedCoordinates = self.mapView.convert(touchedPoint, toCoordinateFrom: self.mapView)
            
            
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = touchedCoordinates
            annotation.title = nameText.text
            annotation.subtitle = noteText.text
            self.mapView.addAnnotation(annotation)
        }
        
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = CLLocationCoordinate2D(latitude: locations[0].coordinate.latitude, longitude: locations[0].coordinate.longitude)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapView.setRegion(region, animated: true)
        
    }
    
    @IBAction func saveButtonClicked(_ sender: Any) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let newPlace = NSEntityDescription.insertNewObject(forEntityName: "Places", into: context)
        
        if nameText.text?.isEmpty == true || noteText.text?.isEmpty == true || chosenLatitude == nil || chosenLongitude == nil {
            let alert = UIAlertController(title: "Hata", message: "Lütfen tüm alanları doldurun ve konumu seçin.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        } else {
            newPlace.setValue(nameText.text, forKey: "title")
            newPlace.setValue(noteText.text, forKey: "subtitle")
            newPlace.setValue(chosenLatitude, forKey: "latitude")
            newPlace.setValue(chosenLongitude, forKey: "longitude")
            newPlace.setValue(UUID(), forKey: "id")
        }
        
        do{
            try context.save()
            print("success")
        } catch {
            print("error")
        }

        
    }
    
}

