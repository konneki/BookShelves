//
//  House.swift
//  BookShelves
//
//  Created by Daniel Konnek on 20.10.2024.
//

import Foundation

struct House: Codable, Identifiable {
    let id: UUID = UUID()
    var house: String?
    var founder: String?
    var colors: [String]?
    var animal: String?
}
