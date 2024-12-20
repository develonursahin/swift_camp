//
//  SuperMusician.swift
//  MusicianClass
//
//  Created by Onur Şahin on 20.12.2024.
//
import Foundation
class SuperMusician : MusicianModel {
    
    func sing2(){
        print("Enter Night")
    }
    
    override func sing() {
        super.sing()
        print("Exit Light")
    }
}
