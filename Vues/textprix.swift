//
//  textprix.swift
//  Sani
//
//  Created by Mamadou Sangare on 2022-04-01.
//

import Foundation
import SwiftUI

struct Textprix : View{
    var text : String
    var prix : Float
    var body: some View{
        HStack{
            Spacer()
            Text(text+":")
            Spacer()
                .frame(width:5)
            Text("$\(String(format:"%.2f",prix))")
        }
    }
}
