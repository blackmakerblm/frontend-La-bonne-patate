//
//  RepasStore.swift
//  Sani
//
//  Created by Mamadou Sangare on 2022-03-28.
//

import Foundation
class RepasStore: ObservableObject {
    @Published var items: [Repas]
    
    init(items: [Repas] = []) {
        self.items = items;
    }
    
    func ajouterItem (_ item: Repas) {
        items.append(item)
    }
    
   
    
}


