//
//  ContentView.swift
//  Sani
//
//  Created by Mamadou Sangare on 2022-03-25.
//

import SwiftUI
public class DragSuiveur: ObservableObject {
    
    @Published public var isMenuActive = false
    
}

struct ContentView: View {
    @ObservedObject  var d: DragSuiveur = DragSuiveur()
    
    var body: some View {
        //@State private var localvalue = isMenuActive
        NavigationView{
        if d.isMenuActive{
            Menu(dragsuiveur: d)
        }
        else{
            Accueil(dragsuiveur: d)
        }
        }
        
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().background(Color.red)
    }
}



 
 
}
