//
//  Col.swift
//  Crossword
//
//  Created by Miguel Cabrera on 5/16/20.
//  Copyright © 2020 Miguel Cabrera. All rights reserved.
//

import SwiftUI

struct Col: View {
    @EnvironmentObject var cross: CrosswordsGenerator
    @State var C: Int = 1
    var body: some View {
        VStack(spacing:0){
                Section{
                    Stack(cross: _cross,x:C,y:1)
                    Stack(cross: _cross,x:C,y:2)
                    Stack(cross: _cross,x:C,y:3)
                    Stack(cross: _cross,x:C,y:4)
                    Stack(cross: _cross,x:C,y:5)
                    Stack(cross: _cross,x:C,y:6)
                    Stack(cross: _cross,x:C,y:7)
                    Stack(cross: _cross,x:C,y:8)
                    Stack(cross: _cross,x:C,y:9)
                    Stack(cross: _cross,x:C,y:10)
                }
                Section{
                    Stack(cross: _cross,x:C,y:11)
                    Stack(cross: _cross,x:C,y:12)
                    Stack(cross: _cross,x:C,y:13)
                }
                
        }
    }
}

struct Col_Previews: PreviewProvider {
    static var previews: some View {
        Col()
    }
}
