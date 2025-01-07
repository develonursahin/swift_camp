//
//  DetailsView.swift
//  FavoriteBook
//
//  Created by Onur Şahin on 7.01.2025.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenFavoriteElement : FavoriteElements
    
    var body: some View {
        VStack {
            Image(chosenFavoriteElement.imagename).resizable().aspectRatio(contentMode: .fit)
            Text(chosenFavoriteElement.name).font(.largeTitle).padding()
            
            Text(chosenFavoriteElement.description)
        }
    }
}

#Preview {
    DetailsView(chosenFavoriteElement: erdalErzincan)
}
