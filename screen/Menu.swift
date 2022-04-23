//
//  Menu.swift
//  Sani
//
//  Created by Mamadou Sangare on 2022-03-28.
//

import Foundation
import SwiftUI


struct Menu : View{
 
    @State var dragsuiveur:DragSuiveur
    @ObservedObject var repasStore: RepasStore = RepasStore(items: menuData)
    @State var isActive:Bool = false
    @State private var event = "Event"
    @GestureState var press = false
    @State var show = false
        
    var body : some View{
   
        ZStack{
            
           // Color.orange.edgesIgnoringSafeArea(.all)
        VStack{
         
            Spacer()
            List{
                Section(
                    header: Text("Repas principal"),
                        content: {
                            ForEach(repasStore.items) {item in
                                if item.type == "main"{
                        HStack{
                            
                            ListRepas(item: item)
                            
                        }
                                }
                            
                        
                    }
                    
                })
                Section(header: Text("A Coté"),
                        content: {
                    ForEach(repasStore.items) {item in
                        if item.type == "side"{
                HStack{
                    
                    ListRepas(item: item)
                    
         
                }
                        }
                    
                
            }
                    
                })
                
                    }            //Spacer()
     
           
           
            RoundedRectangle(cornerRadius: 30)
                    .fill(Color.green)
                    .onLongPressGesture(minimumDuration: 2) {
                        
                        dragsuiveur.isMenuActive = false
                        }
                    .frame(width: 300, height: 80)
                .overlay(Text("Quitter"))
                .font(.system(size: 20))
                .foregroundColor(Color.white)
        
        }
            
        .background(Color.orange)
            
            .toolbar{
        
                NavigationLink(destination:Paiement(repasStore:repasStore).navigationBarBackButtonHidden(true)){
                    RoundedRectangle(cornerRadius: 30)
                            .fill(Color.green)
                        
                        .frame(width: 100, height: 35)
                        
                        .overlay(
                            HStack{
                                Image(systemName: "shippingbox").font(.system(size: 20))
                                Text("Payer").font(.system(size: 20))
                            })
                        .font(.system(size: 20))
                        .foregroundColor(Color.white)
                    
                }
                
            }
        }
        
                
        }
       
    
}

