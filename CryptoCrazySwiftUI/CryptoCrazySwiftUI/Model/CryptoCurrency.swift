//
//  CryptoCurrency.swift
//  CryptoCrazySwiftUI
//
//  Created by Onur Şahin on 9.01.2025.
//

import Foundation

struct CryptoCurrency : Hashable, Decodable, Identifiable {
    let id = UUID()
    let currency : String
    let price : String
    
    private enum CodingKeys : String, CodingKey {
        case currency = "currency"
        case price = "price"
    }
}
