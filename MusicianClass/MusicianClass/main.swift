//
//  main.swift
//  MusicianClass
//
//  Created by Onur Şahin on 20.12.2024.
//

import Foundation

let musician = MusicianModel(name: "Onur", age: 25, instrument: "Baglama", type:MusicianTypes.BouzoukiPlayer)
print(musician.instrument)
musician.sing()

let kirk = SuperMusician(name: "Kirk", age: 34, instrument: "Guitar", type: MusicianTypes.LeadGuitar)

kirk.sing()
kirk.sing2()
