//
//  DataService.swift
//  Character
//
//  Created by Daniel Konnek on 20.10.2024.
//

import Foundation

struct DataService {
    
    let baseUrl = "https://potterapi-fedeperin.vercel.app/"
    let language: Language
    
    func fetchData<T: Decodable>(for: T.Type = T.self, of type: FetchType) async -> [T] {
        let url = URL(string: "\(baseUrl)\(language.rawValue)/\(type.rawValue)")
        
        if let url {
            
            do {
                let (data, response) = try await URLSession.shared.data(from: url)
                let decoder = JSONDecoder()
                let result = try decoder.decode([T].self, from: data)
                
                return result
            } catch {
                print(error)
            }
        }
        
        return []
    }
    
}

enum Language: String {
    case english = "en"
    case spanish = "es"
    case french = "fr"
    case italian = "it"
    case portuguese = "pt"
}

enum FetchType: String {
    case books = "books"
    case characters = "characters"
    case houses = "houses"
    case spells = "spells"
}
