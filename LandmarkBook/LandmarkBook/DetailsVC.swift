//
//  DetailsVC.swift
//  LandmarkBook
//
//  Created by Onur Şahin on 17.12.2024.
//

import UIKit

class DetailsVC: UIViewController {
    @IBOutlet weak var landmarkLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
  
    var selectedLandmarkName = ""
    var selectedImage = UIImage()

    override func viewDidLoad() {
        super.viewDidLoad()

        landmarkLabel.text = selectedLandmarkName
        imageView.image = selectedImage
    }
    
   

}
