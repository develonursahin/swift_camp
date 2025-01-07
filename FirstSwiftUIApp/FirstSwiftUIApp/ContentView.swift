//
//  ContentView.swift
//  FirstSwiftUIApp
//
//  Created by Onur Şahin on 6.01.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, Swift UI!").padding(10)
            }
            Text("Hello, Swift UI!").foregroundColor(Color.red)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
