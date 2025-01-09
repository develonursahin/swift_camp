//
//  ContentView.swift
//  AsyncImageSwiftUI
//
//  Created by Onur Şahin on 9.01.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/7/74/Earth_poster_large.jpg")) { image in
                    image.resizable().frame(width: 300, height: 300, alignment: .center)
                } placeholder: {
                    ProgressView()
                }

                List(superHeroArray) { superhero in
                    Text(superhero.name)
                        .font(.title2)
                        .foregroundColor(.blue)
                }.navigationTitle(Text("Superhero Book"))
            }
        }
    }
}

#Preview {
    ContentView()
}
