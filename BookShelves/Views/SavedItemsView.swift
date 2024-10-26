//
//  SavedItemsView.swift
//  BookShelves
//
//  Created by Daniel Konnek on 25.10.2024.
//

import SwiftUI

struct SavedItemsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Saved Items")
                .font(.largeTitle)
                .bold()
               
            VStack(spacing: 10) {
                SavedItemCard(type: .books)
                SavedItemCard(type: .characters)
                SavedItemCard(type: .houses)
                SavedItemCard(type: .spells)
            }
        }
        .padding()
    }
}

#Preview {
    SavedItemsView()
}
