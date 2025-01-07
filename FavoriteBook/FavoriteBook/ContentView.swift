//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Onur Şahin on 7.01.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
     
        NavigationView {
            List {
                ForEach(myFavorites) {  favorite in
                    Section(header:  Text(favorite.title)){
                        ForEach(favorite.elements){element in
                            NavigationLink(destination: DetailsView(chosenFavoriteElement: element)) {
                                Text(element.name)
                            }
                        }
                    }
                }
            }
       }
   }
}

#Preview {
    ContentView()
}
