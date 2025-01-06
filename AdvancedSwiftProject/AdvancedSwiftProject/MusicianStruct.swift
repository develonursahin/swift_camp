//
//  MusicianStruct.swift
//  AdvancedSwiftProject
//
//  Created by Onur Şahin on 6.01.2025.
//

import Foundation

struct MusicianStruct {
    var name : String
    var age : Int
    var instrument : String
    
    mutating func happyBirthday(){
        self.age += 1
    }
}
