//
//  ThirdView.swift
//  FirstSwiftUIApp
//
//  Created by Onur Şahin on 7.01.2025.
//

import SwiftUI

struct ThirdView: View {
    
    let myArray = ["James","Lars","Kirk", "Rob"]
    
    var body: some View {
        
        List(myArray, id: \.self) {element in
            Image("erdal_erzincan").resizable().aspectRatio(contentMode: .fit).frame(width: 50,height: 50)
            Text(element)}
   
        /*
        List{
            ForEach(myArray, id: \.self){ element in
                Text(element)
            }
         */
        }
}

#Preview {
    ThirdView()
}
