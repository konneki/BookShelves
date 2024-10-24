//
//  Character.swift
//  BookShelves
//
//  Created by Daniel Konnek on 20.10.2024.
//

import Foundation

struct Character: Codable, Identifiable {
    let id = UUID()
    var fullName: String?
    var nickname: String?
    var hogwartsHouse: String?
    var interpretedBy: String?
    var children: [String]?
    var image: String?
    var birthdate: String?
}
