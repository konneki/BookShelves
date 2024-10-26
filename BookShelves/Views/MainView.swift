//
//  MainView.swift
//  BookShelves
//
//  Created by Daniel Konnek on 20.10.2024.
//

import SwiftUI
import SwiftData

struct MainView: View {
    
    @Environment(\.modelContext) var context
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Saved", systemImage: "bookmark", value: 0) {
                SavedItemsView()
            }
            
            Tab("Search", systemImage: "magnifyingglass", value: 1) {
                SearchView()
            }
            
            Tab("Settings", systemImage: "gearshape", value: 2) {
                SettingsView()
            }
        }
        .padding()
    }
    
}

#Preview {
    MainView()
}
