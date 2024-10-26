//
//  DataService.swift
//  Character
//
//  Created by Daniel Konnek on 20.10.2024.
//

import Foundation

struct DataService {
    
    let baseUrl = "https://potterapi-fedeperin.vercel.app/"
    let language: Language = .english
    
    func fetchBooks(_ search: String) async -> [Book] {
        let url = URL(string: "\(baseUrl)\(language.rawValue)/books")
        
        if let url {
            
            do {
                let (data, response) = try await URLSession.shared.data(from: url)
                let decoder = JSONDecoder()
                let result = try decoder.decode([Book].self, from: data)
                
                return result
            } catch {
                print(error)
            }
        }
        
        return []
    }
    
    func fetchCharacters(_ search: String) async -> [Character] {
        let url = URL(string: "\(baseUrl)\(language.rawValue)/characters")
        
        if let url {
            
            do {
                let (data, response) = try await URLSession.shared.data(from: url)
                let decoder = JSONDecoder()
                let result = try decoder.decode([Character].self, from: data)
                
                return result
            } catch {
                print(error)
            }
        }
        
        return []
    }
    
    func fetchHouses(_ search: String) async -> [House] {
        let url = URL(string: "\(baseUrl)\(language.rawValue)/houses")
        
        if let url {
            
            do {
                let (data, response) = try await URLSession.shared.data(from: url)
                let decoder = JSONDecoder()
                let result = try decoder.decode([House].self, from: data)
                
                return result
            } catch {
                print(error)
            }
        }
        
        return []
    }
    
    func fetchSpells(_ search: String) async -> [Spell] {
        let url = URL(string: "\(baseUrl)\(language.rawValue)/spells")
        
        if let url {
            
            do {
                let (data, response) = try await URLSession.shared.data(from: url)
                let decoder = JSONDecoder()
                let result = try decoder.decode([Spell].self, from: data)
                
                return result
            } catch {
                print(error)
            }
        }
        
        return []
    }
}

enum Language: String, Codable {
    case english = "en"
    case spanish = "es"
    case french = "fr"
    case italian = "it"
    case portuguese = "pt"
}

enum FetchType: String, CaseIterable, Identifiable {
    case books = "books"
    case characters = "characters"
    case houses = "houses"
    case spells = "spells"
    
    var id: Self { self }
}
