//
//  BookData.swift
//  BookShelves
//
//  Created by Daniel Konnek on 23.10.2024.
//

import Foundation
import SwiftData

@Model
class BookData: Identifiable {
    @Attribute(.unique) var id: UUID
    var number: Int = 0
    var title: String = ""
    var originalTitle: String = ""
    var releaseDate: String = ""
    var information: String = ""
    var pages: Int = 0
    var cover: String = ""
    
    init(id: UUID) {
        self.id = id
    }
}
