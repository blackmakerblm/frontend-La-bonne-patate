//
//  itemPrix.swift
//  Sani
//
//  Created by Mamadou Sangare on 2022-04-01.
//

import Foundation
import SwiftUI


struct Commande : View{
    var commande : Repas
    
    var body: some View{

        Text("--\(commande.isCombo ? " \(commande.name)(Combo)":"\(commande.name)" )  ..\(String(format:"%.2f",commande.priceItem))$")
                    Spacer()
                        .frame(height:10)

            
    }
}

/*
  */
