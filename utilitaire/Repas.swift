//
//  Repas.swift
//  Sani
//
//  Created by Mamadou Sangare on 2022-03-28.
//

import Foundation

class Repas: Codable,Identifiable, ObservableObject {
    enum CodingKeys: CodingKey {
            case id
            case name
            case type
            case isCombo
            case isSelected
            case priceItem
            case priceCombo
        
    }
    
    required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            id = try container.decode(String.self, forKey: .id)
            name = try container.decode(String.self, forKey: .name)
            type = try container.decode(String.self, forKey: .type)
            isSelected = try container.decode(Bool.self, forKey: .isSelected)
            isCombo = try container.decode(Bool.self, forKey: .isCombo)
            priceItem = try container.decode(Float.self, forKey: .priceItem)
            priceCombo = try container.decode(Float.self, forKey: .priceCombo)
    }
    
    func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(id, forKey: .id)
            try container.encode(name, forKey: .name)
            try container.encode(type, forKey: .type)
            try container.encode(isSelected, forKey: .isSelected)
            try container.encode(isCombo, forKey: .isCombo)
            try container.encode(priceItem, forKey: .priceItem)
            try container.encode(priceCombo, forKey: .priceCombo)
    }
    
    
    var id : String
    var name: String
    var type : String
    @Published var isCombo : Bool
    @Published var isSelected : Bool
    var priceItem : Float
    var priceCombo : Float
    
}


