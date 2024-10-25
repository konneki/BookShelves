//
//  LanguageData.swift
//  BookShelves
//
//  Created by Daniel Konnek on 25.10.2024.
//

import Foundation
import SwiftData

@Model
class LanguageData {
    @Attribute(.unique) var language: Language
    
    init(language: Language) {
        self.language = .english
    }
}
