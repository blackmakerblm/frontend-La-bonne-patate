//
//  ListRepas.swift
//  Sani
//
//  Created by Mamadou Sangare on 2022-03-28.
//

import Foundation
import SwiftUI

struct ListRepas: View {
    var item: Repas
    //let interaction = UIContextMenuInteraction(delegate: self)
    @State var selected:Bool = false
    @State var isCombo:Bool = true

    var body: some View {
        HStack {
            
            
            if item.type == "main"{
                Text(item.name)
                    .contextMenu
                            {
                              Button(action: {
                                  item.isCombo = true
                                  isCombo = item.isCombo
                              }) { Text("EN COMBO"); Image(systemName: "bag.badge.plus") }
                              Button(action: {
                                  item.isCombo = false
                                  isCombo = item.isCombo
                              }) { Text("ITEM UNIQUEMENT");  }
                            }
            Spacer()
            
                isCombo == true ? AnyView(Image(systemName: "bag.badge.plus")):AnyView(Text(""))
            }
            if item.type == "side"{
                Text(item.name)
                .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .leading)            }
            
                
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(selected ? Color.purple : Color.white)
        .onTapGesture(count: 2) {
            print(item.isSelected)
            item.isSelected = !item.isSelected
            selected = item.isSelected
        }
        
    }
    
}
