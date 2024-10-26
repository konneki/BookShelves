//
//  SavedItemCard.swift
//  BookShelves
//
//  Created by Daniel Konnek on 25.10.2024.
//

import SwiftUI

struct SavedItemCard: View {
    
    var type: FetchType = .books
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.gray.opacity(0.5))
            
            VStack(spacing: 10) {
                Label(type.rawValue.capitalized, systemImage: labelIcon(type))
                    .font(.title2)
                
                Text("0")
                    .font(.title)
            }
            .padding()
        }
    }
    
    func labelIcon(_ type: FetchType) -> String {
        switch type {
            
        case .books:
            return "book"
        case .characters:
            return "person.3"
        case .houses:
            return "flag"
        case .spells:
            return "wand.and.sparkles"
        }
    }
}

#Preview {
    SavedItemCard()
}
