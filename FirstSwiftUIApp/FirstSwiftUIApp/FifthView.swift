//
//  FifthView.swift
//  FirstSwiftUIApp
//
//  Created by Onur Şahin on 7.01.2025.
//

import SwiftUI

struct FifthView: View {
    @State var myName = "Onur"
    
    var body: some View {
        VStack{
            Text(myName)
            TextField("Enter a name", text: $myName).border(.black)
        }
    }
}

#Preview {
    FifthView()
}
