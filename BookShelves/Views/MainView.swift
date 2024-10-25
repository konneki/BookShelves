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
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .task {
            let service = DataService(language: .english)
            let response = await service.fetchData(for: Spell.self, of: .spells)
            print(response)
        }
    }
}

#Preview {
    MainView()
}
