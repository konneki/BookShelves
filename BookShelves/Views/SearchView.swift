//
//  SearchView.swift
//  BookShelves
//
//  Created by Daniel Konnek on 25.10.2024.
//

import SwiftUI
import SwiftData

struct SearchView: View {
    
    @State var searchText: String = ""
    @State var category: FetchType = .books
    
    @State private var books: [Book] = []
    @State private var characters: [Character] = []
    @State private var houses: [House] = []
    @State private var spells: [Spell] = []
    
    let service = DataService()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Search View")
                .font(.largeTitle)
                .bold()
            
            HStack {
                TextField("Search", text: $searchText)
                    .textFieldStyle(.roundedBorder)
                
                Button("Search") {
                    Task {
                        resetArrays()
                        switch category {
                        case .books:
                            books = await service.fetchBooks(searchText)
                        case .characters:
                            characters = await service.fetchCharacters(searchText)
                        case .houses:
                            houses = await service.fetchHouses(searchText)
                        case .spells:
                            spells = await service.fetchSpells(searchText)
                        }
                    }
                }
                .buttonStyle(.borderedProminent)
            }
            
            Picker("Category", selection: $category) {
                ForEach(FetchType.allCases) { c in
                        Text(c.rawValue.capitalized)
                        .tag(c)
                    }
            }
            .pickerStyle(.palette)
            
            switch category {
            case .books:
                List(books) { book in
                    Text(book.title ?? "No title")
                }
            case .characters:
                List(characters) { character in
                    Text(character.fullName ?? "No name")
                }
            case .houses:
                List(houses) { house in
                    Text(house.house ?? "No house")
                }
            case .spells:
                List(spells) { spell in
                    Text(spell.spell ?? "No spell")
                }
            }
        }
        .padding()
    }
    
    func resetArrays() {
        books.removeAll()
        houses.removeAll()
        spells.removeAll()
        characters.removeAll()
    }
    
}

#Preview {
    SearchView()
}
