//
//  HeroView.swift
//  HeroWidget
//
//  Created by Onur Şahin on 8.01.2025.
//

import SwiftUI


struct HeroView: View {
    let hero : Superhero
    var body: some View {
        HStack{
            CircularImageView(image: Image(hero.image), color: hero.color.toColor()).frame( width: 100, height: 100, alignment: .center).padding()
            Spacer()
            VStack{
                Text(hero.name).font(.largeTitle).fontWeight(.bold).foregroundColor(hero.color.toColor())
                Text(hero.realName).fontWeight(.bold)
            }.padding()
            Spacer()
        }.frame(width: UIScreen.main.bounds.width,alignment: .center)
    }
}

#Preview {
    HeroView(hero: batman)
}
