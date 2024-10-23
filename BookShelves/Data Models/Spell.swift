//
//  Spell.swift
//  BookShelves
//
//  Created by Daniel Konnek on 20.10.2024.
//

import Foundation

struct Spell: Codable, Identifiable {
    let id = UUID()
    var spell: String?
    var use: String?
}
