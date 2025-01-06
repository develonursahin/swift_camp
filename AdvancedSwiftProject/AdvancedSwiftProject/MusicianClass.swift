//
//  MusicianClass.swift
//  AdvancedSwiftProject
//
//  Created by Onur Şahin on 6.01.2025.
//


import Foundation

class MusicianClass{
    var name : String
    var age : Int
    var instrument : String
    
    init(name: String, age: Int, instrument: String) {
        self.name = name
        self.age = age
        self.instrument = instrument
    }
    
    func happyBirthday(){
        age += 1
    }
    
}
