//
//  ContentView.swift
//  HeroWidget
//
//  Created by Onur Şahin on 8.01.2025.
//

import SwiftUI
import WidgetKit


let superHeroArray = [superman,batman,ironman]

struct ContentView: View {
    
    @AppStorage("hero", store:UserDefaults(suiteName: "group.com.develonur.HeroWidget"))
    var heroData : Data = Data()
    
    
    
    var body: some View {
        VStack {
            ForEach(superHeroArray){ hero in
                HeroView(hero: hero).onTapGesture {
                    saveToDefaults(hero:hero)
                }
            }
     
        }
      
    }
    
    func saveToDefaults(hero : Superhero){

        if let heroData = try? JSONEncoder().encode(hero){
            self.heroData = heroData
            print(hero.name)
            WidgetCenter.shared.reloadTimelines(ofKind: "WidgetHero")
        }
    }
}

#Preview {
    ContentView()
}
