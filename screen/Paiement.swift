//
//  Paiement.swift
//  Sani
//
//  Created by Mamadou Sangare on 2022-04-01.
//

import Foundation
import SwiftUI


struct Paiement: View{
    @Environment(\.dismiss) var dismiss
    var repasStore: RepasStore
    
  
    var body: some View{
        VStack{
            Spacer().frame(height:5)
            VStack{
            
            TabView{
                Addition(repasStore: repasStore)
                    .tabItem
                {
                        Label("Facture", systemImage: "creditcard.fill")
                                   
                }
                Venir()
                    .tabItem
                {
                        Label("Paiement", systemImage: "dollarsign.square")
                                   
                }
            }
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .top)
        .background(Color.orange)
        .toolbar(){
            ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading) {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.green)
                    .onTapGesture(count: 1) {
                        repasStore.items.forEach{
                            item in
                            print(item.isSelected)
                        }
                        dismiss()
                        
                                }
                    .frame(width: 100, height: 40)
                    .overlay(
                        HStack{
                            Image(systemName: "arrow.backward")
                            Text("Retour")
                        }
                    )                    }
            
            
        }
        
    }
        .background(Color.orange)
    }
}
