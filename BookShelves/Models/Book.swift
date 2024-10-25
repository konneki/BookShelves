//
//  Book.swift
//  BookShelves
//
//  Created by Daniel Konnek on 20.10.2024.
//

import Foundation

struct Book: Codable, Identifiable {
    let id: UUID = UUID()
    var number: Int?
    var title: String?
    var originalTitle: String?
    var releaseDate: String?
    var description: String?
    var pages: Int?
    var cover: String?
}
