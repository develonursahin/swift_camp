//
//  UploadViewController.swift
//  FirebaseInstaClone
//
//  Created by Onur Şahin on 2.01.2025.
//

import UIKit

class UploadViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var commentText: UITextField!
    @IBOutlet weak var uploadButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()


        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(chooseImage))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
 @objc func chooseImage(){
     let pickerController = UIImagePickerController()
     pickerController.delegate = self
     pickerController.sourceType = .photoLibrary
     present(pickerController, animated: true, completion: nil)
        }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageView.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func actionButtonClicked(_ sender: Any) {
        
    }
    
}
