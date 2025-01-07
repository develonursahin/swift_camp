//
//  FourthView.swift
//  FirstSwiftUIApp
//
//  Created by Onur Şahin on 7.01.2025.
//

import SwiftUI

struct FourthView: View {
    
    @State  var myName = "ONUR"
    
    var body: some View {
        VStack{
            Text(myName).font(.largeTitle).padding()
            Button(action: {
                self
                    .myName = "Ali"
            }) {
                Text("Change Name")
            }
        }
    }
}

#Preview {
    FourthView()
}
