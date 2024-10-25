//
//  SpellData.swift
//  BookShelves
//
//  Created by Daniel Konnek on 23.10.2024.
//

import Foundation
import SwiftData

@Model
class SpellData: Identifiable {
    @Attribute(.unique) var id: UUID
    var spell: String = ""
    var use: String = ""
    
    init(id: UUID) {
        self.id = id
    }
}
