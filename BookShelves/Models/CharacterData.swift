//
//  CharacterData.swift
//  BookShelves
//
//  Created by Daniel Konnek on 23.10.2024.
//

import Foundation
import SwiftData

@Model
class CharacterData: Identifiable {
    @Attribute(.unique) var id: UUID
    var fullName: String = ""
    var nickname: String = ""
    var hogwartsHouse: String = ""
    var interpretedBy: String = ""
    var children: [String] = []
    var image: String = ""
    var birthdate: String = ""
    
    init(id: UUID) {
        self.id = id
    }
}
