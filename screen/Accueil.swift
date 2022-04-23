//
//  Accueil.swift
//  Sani
//
//  Created by Mamadou Sangare on 2022-03-28.
//

import Foundation
import SwiftUI


struct Accueil : View{
    
    @State var w : Double = 85
    @State var isActive: Bool = false
    @State var dragsuiveur:DragSuiveur
    public var screenmidleWidth: CGFloat {
        return UIScreen.main.bounds.width/2
    }
    
    var body: some View{
        VStack{
        
            Text("Bienvenue.").foregroundColor(Color.white).font(.system(size:65)).multilineTextAlignment(.center)
                
            Image("logo")
                .resizable()
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 60))
                .overlay(RoundedRectangle(cornerRadius: 60).stroke(Color.purple,lineWidth: 4))
                
                .padding(.horizontal, 5.0)
            
            Text(
                 """
                 C'est comme
                manger a la maison
                """
            )
                
                .font(.system(size: 20))
                .foregroundColor(Color.white)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            Spacer()
            ZStack(alignment: .leading){
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.white.opacity(0.2))
                .frame(width: 320, height: 70)
                
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.white.opacity(0.2))
                    
                    .frame(width: 310, height: 60)
                    .overlay(Text("Commander"))
                    .font(.system(size: 25))
                    .foregroundColor(Color.white)
            
                RoundedRectangle(cornerRadius: 35)
                        .fill(Color.green)
                        .gesture(DragGesture()
                                    .onChanged({
                            value in
                            let  ho = value.translation.width as CGFloat
                            if(ho<225){
                            w = ho+85
                            }
                        })
                        .onEnded(
                                {
                                            value in
                                            if w <= screenmidleWidth{
                                                w = 85
                                                
                                            }
                                            else {
                                                w = 320
                                                dragsuiveur.isMenuActive = true
                                                w = 85
                                            }
                                                
                                        }
                                    )
                        )
                        
                        .overlay(
                            
                            Image(systemName: "chevron.right.2")
                                .foregroundColor(Color(.white))
                                .font(.system(size: 30))
                                .padding(20)
                          ,alignment: .trailing)
                    .frame(minWidth: 65, idealWidth: w, maxWidth: 65, minHeight: 75, idealHeight: 65, maxHeight: 65)
                
                
                         }.padding(.leading)
            
        }
        .padding(.top, 80)
        .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .top)
        .background(Color.orange)
       
    }
    }
    
    

