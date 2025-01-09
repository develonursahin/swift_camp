//
//  CircularImageView.swift
//  HeroWidget
//
//  Created by Onur Şahin on 8.01.2025.
//

import SwiftUI

struct CircularImageView: View {
    var image: Image
    var color: Color // Renk parametresi eklendi

    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(color, lineWidth: 5))
            .shadow(radius: 25)
    }
}

#Preview {
    CircularImageView(image: Image("batman"), color: .black) 
}
