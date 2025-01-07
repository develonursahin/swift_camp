//
//  SecondView.swift
//  FirstSwiftUIApp
//
//  Created by Onur Şahin on 7.01.2025.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        Image("erdal_erzincan").resizable()
            .aspectRatio(contentMode: ContentMode.fit)
            .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.8)
    }
}

#Preview {
    SecondView()
}
