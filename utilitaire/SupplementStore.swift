//
//  SupplementStore.swift
//  Sani
//
//  Created by Mamadou Sangare on 2022-03-28.
//

import Foundation
class SupplementStore: ObservableObject {
    @Published var items: [Supplement]
    
    init(items: [Supplement] = []) {
        self.items = items;
    }
    
    func ajouterItem (_ item: Supplement) {
        items.append(item)
    }
    
    func completerItem(_ item: Supplement) {
       if let index = items.firstIndex(where: { value -> Bool in
            value.id == item.id
       }) {
           items[index].completed = !items[index].completed
       }
    }
}
