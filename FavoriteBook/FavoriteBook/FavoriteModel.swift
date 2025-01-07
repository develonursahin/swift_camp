//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by Onur Şahin on 7.01.2025.
//

import Foundation
import SwiftUI

struct FavoriteModel : Identifiable {
    var id = UUID()
    var title : String
    var elements : [FavoriteElements]
}

struct FavoriteElements : Identifiable {
    var id = UUID()
    var name : String
    var imagename : String
    var description : String
}

//Bands
let erdalErzincan = FavoriteElements(name: "Erdal Erzincan", imagename: "erdal_erzincan", description: "Türküler Sevdamız")
let hasretGultekin = FavoriteElements(name: "Hasret Gültekin", imagename: "hasret_gultekin", description: "Gece ile Gündüz Arasında")
let rizaKilic = FavoriteElements(name: "Rıza Kılıç", imagename: "riza_kilic", description: "Şaha Doğru")

let favoriteBands = FavoriteModel(title: "Favorite Bands", elements: [erdalErzincan,hasretGultekin,rizaKilic])

//Cities
let sivas = FavoriteElements(name: "Sivas", imagename: "sivas", description: "Sivas - Zara")
let tunceli = FavoriteElements(name: "Tunceli", imagename: "tunceli", description: "Tunceli - Ovacık")
let mugla = FavoriteElements(name: "Muğla", imagename: "mugla", description: "Muğla - Marmaris")

let favoriteCities = FavoriteModel(title: "Favorite Cities", elements: [sivas,tunceli,mugla])

let myFavorites = [favoriteBands, favoriteCities]

