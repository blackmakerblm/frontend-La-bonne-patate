//
//  ListSupplement.swift
//  Sani
//
//  Created by Mamadou Sangare on 2022-03-28.
//

import Foundation
import SwiftUI
struct ListSupplement: View {
    var item: Supplement
    @State var selected:Bool = false
    var body: some View {
        
            
 
            Text(item.nom)
                .strikethrough(item.completed)
                .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .leading)
        .background(selected == true ? Color.purple:Color.white)
            .onTapGesture(count: 2) {
               selected = !selected
            }
                 }
    
       
    
    
}
