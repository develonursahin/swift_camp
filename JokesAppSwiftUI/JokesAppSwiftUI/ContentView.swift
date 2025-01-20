//
//  ContentView.swift
//  JokesAppSwiftUI
//
//  Created by Onur Şahin on 10.01.2025.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var jokesVM = JokesViewModel()
    var body: some View {
        NavigationView{
            List(jokesVM.jokes) { element in
                Text(element.joke)
            }
            .toolbar{Button(action: addJoke ){ Text("Get New Joke")}}
            .navigationTitle("Jokes App")
        }
    }
    func addJoke(){
        jokesVM.getJokes()
    }
}

#Preview {
    ContentView()
}
