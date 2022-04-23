//
//  supplement.swift
//  Sani
//
//  Created by Mamadou Sangare on 2022-03-28.
//

import Foundation
import UIKit
struct Supplement:Identifiable {
    var id : String
    var nom: String
    var completed: Bool = false
}

var suppData: [Supplement] = [
    Supplement(id: "String", nom: "Frite"),
    
]
   

class ss : UIViewController{
    var mavue:Menu! { return self.mavue as Menu }
    override func loadView() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        
    }}
