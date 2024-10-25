//
//  HouseData.swift
//  BookShelves
//
//  Created by Daniel Konnek on 23.10.2024.
//

import Foundation
import SwiftData

@Model
class HouseData: Identifiable {
    @Attribute(.unique) var id: UUID
    var house: String = ""
    var founder: String = ""
    var colors: [String] = []
    var animal: String = ""
    
    init(id: UUID) {
        self.id = id
    }
}
