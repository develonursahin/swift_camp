//
//  Superhero.swift
//  HeroWidget
//
//  Created by Onur Şahin on 8.01.2025.
//

import Foundation
import SwiftUI

struct Superhero: Identifiable, Codable {
    var id: String { image }
    let image: String
    let name: String
    let realName: String
    let color: CodableColor // Color yerine Codable bir wrapper

    // Codable olmayan Color türünü bir wrapper ile encode/decode yapıyoruz
    struct CodableColor: Codable {
        let red: Double
        let green: Double
        let blue: Double
        let alpha: Double

        // Color'dan CodableColor'a dönüşüm
        init(_ color: Color) {
            let uiColor = UIColor(color) // SwiftUI Color -> UIColor
            var red: CGFloat = 0, green: CGFloat = 0, blue: CGFloat = 0, alpha: CGFloat = 0
            uiColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
            self.red = Double(red)
            self.green = Double(green)
            self.blue = Double(blue)
            self.alpha = Double(alpha)
        }

        // CodableColor'dan Color'a dönüşüm
        func toColor() -> Color {
            return Color(red: red, green: green, blue: blue, opacity: alpha)
        }
    }
}

// Örnek veriler
let superman = Superhero(
    image: "superman",
    name: "Superman",
    realName: "Clark Kent",
    color: .init(Color.blue)
)

let batman = Superhero(
    image: "batman",
    name: "Batman",
    realName: "Bruce Wayne",
    color: .init(Color.black)
)

let ironman = Superhero(
    image: "ironman",
    name: "Ironman",
    realName: "Tony Stark",
    color: .init(Color.red)
)
