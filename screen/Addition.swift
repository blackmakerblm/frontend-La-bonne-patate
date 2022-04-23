//
//  Addition.swift
//  Sani
//
//  Created by Mamadou Sangare on 2022-04-01.
//

import Foundation
import SwiftUI


struct Addition : View{
    var repasStore: RepasStore
    
    var date = Date()
    let dateFormatter = DateFormatter()
    init(repasStore:RepasStore?){
        self.repasStore = repasStore!
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        dateFormatter.locale = Locale(identifier: "fr-FR")
    
        
    }
        
    func mescommandes(repasStoe: RepasStore)->[Repas]{
        var commande = [Repas]()
        repasStoe.items.forEach{
            item in
            if item.isSelected{
                commande.append(item)
            }
        }
        return commande
    }
    
     func prixsanstaxe(commandes : [Repas]) -> Float{
        var total : Float = 0
        commandes.forEach{
            commande in
            total = total + commande.priceItem
            if commande.isCombo{
                total = total + commande.priceCombo
            }
        }
        return total
        
    }


     func taxe(totalsanstaxe: Float) -> Float{
        return totalsanstaxe*0.1
    }
     func total(sanstaxe:Float, taxe:Float) -> Float{
        return sanstaxe + taxe
    }

    
    var body: some View{
            ZStack{
                VStack{
                    Text("A la bonne patate")
                        .fontWeight(.bold)
                        .font(.system(size: 40))
                    Spacer()
                        .frame(height:10)
                  
                    Text("\(dateFormatter.string(from: date))")
                    Spacer()
                        .frame(height:70)
                    Group{
                        
                            
                        ForEach(repasStore.items){
                            item in
                            if item.isSelected{
                            Commande(commande:item)
                            }
                            
                        }
                                 
                    
                    }
                    Spacer()
            
                    Group{
                        var prixsanstaxe = prixsanstaxe(commandes: mescommandes(repasStoe: repasStore))
                        var taxe = taxe(totalsanstaxe: prixsanstaxe)
                        var total = total(sanstaxe: prixsanstaxe, taxe: taxe)
                        
                        Textprix(text: "Total avant(taxe)", prix: prixsanstaxe)
                            Textprix(text: "Taxe", prix: taxe)
                            Textprix(text: "Montant total", prix: total)
                            
                        }
                    .padding(5)
                    
                   
                      
                }
            
                .frame(maxWidth:.infinity)
                .border(Color.orange)
            }
            .padding(10)
     

        
    }
}
