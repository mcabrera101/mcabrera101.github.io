//
//  Row.swift
//  Crossword
//
//  Created by Miguel Cabrera on 5/17/20.
//  Copyright © 2020 Miguel Cabrera. All rights reserved.
//

import SwiftUI
class Tog: ObservableObject{
    @Published var Empty: Bool = true
}


struct Row: View {
    @EnvironmentObject var cross: CrosswordsGenerator
    var body: some View {
        HStack(spacing: 0){
            Section{
                Col(cross: _cross, C:1)
                Col(cross: _cross, C:2)
                Col(cross: _cross, C:3)
                Col(cross: _cross, C:4)
                Col(cross: _cross, C:5)
                Col(cross: _cross, C:6)
                Col(cross: _cross, C:7)
                Col(cross: _cross, C:8)
                Col(cross: _cross, C:9)
                Col(cross: _cross, C:10)
            }
            Section{
                Col(cross: _cross, C:11)
                Col(cross: _cross, C:12)
                Col(cross: _cross, C:13)
            }
        }
        
    }
}

struct Row_Previews: PreviewProvider {
    static var previews: some View {
        Row()
    }
}
