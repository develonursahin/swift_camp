//
//  JokesData.swift
//  JokesAppSwiftUI
//
//  Created by Onur Şahin on 20.01.2025.
//

import Foundation

// MARK: - Welcome
struct Welcome:Identifiable, Codable {
    let id = UUID()
    let type: String
    let value: [Value]
}

// MARK: - Value
struct Value:Identifiable, Codable {
    let id: Int
    let joke: String
    let categories: [String]
}

