//
//  BookShelvesApp.swift
//  BookShelves
//
//  Created by Daniel Konnek on 20.10.2024.
//

import SwiftUI
import SwiftData

@main
struct BookShelvesApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
                .modelContainer(for: [BookData.self, CharacterData.self, HouseData.self, SpellData.self])
        }
    }
}
