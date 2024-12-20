//
//  MusicianModel.swift
//  MusicianModelClass
//
//  Created by Onur Şahin on 20.12.2024.
//

import Foundation

enum MusicianTypes {
    case LeadGuitar
    case Vocalist
    case Drummer
    case Bassist
    case Violenist
    case BouzoukiPlayer
}

class MusicianModel {
    var name : String
    var age : Int
    var instrument : String
    var type : MusicianTypes
    
    init(name: String, age: Int, instrument: String, type: MusicianTypes) {
        self.name = name
        self.age = age
        self.instrument = instrument
        self.type = type
    }
    
    func sing(){
        print("Nothing else matters.")
    }
    
    private func testPrivate(){
        print("test private func")
    }
}
