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
    var language: Language
    
    init(language: Language = .english) {
        self.language = language
    }
}
