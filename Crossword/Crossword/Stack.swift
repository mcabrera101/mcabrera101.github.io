//
//  Stack.swift
//  Crossword
//
//  Created by Miguel Cabrera on 5/16/20.
//  Copyright © 2020 Miguel Cabrera. All rights reserved.
//

import SwiftUI


struct Stack: View {
    @EnvironmentObject var cross: CrosswordsGenerator
    @EnvironmentObject var tog: Tog
    @State var answer: String = ""
    @State var x: Int = 1
    @State var y: Int = 1
    
    var correct: String{
        return self.xw_gen(x: self.x, y: self.y)

    }
    var live: Color{
        if(self.correct == "-" ){
            return .black
        }
        else{
            return .white
        }
    }
    func xw_gen(x: Int, y: Int) -> String{
        
        if self.tog.Empty{
            self.cross.generate()
            self.tog.Empty.toggle()
        }
        let s = self.cross.getCell( x, row: y)

        return s
        
    }

    var body: some View {
        
                 TextField("\(self.correct)", text: $answer)
                    .border(Color.black)
                    .frame(width: 30)
                    .background(live)

            
        }
}

struct Stack_Previews: PreviewProvider {
    static var previews: some View {
        Stack()
    }
}
