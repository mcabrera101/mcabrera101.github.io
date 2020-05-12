//
//  connect$.swift
//  ConnectFour
//
//  Created by Miguel Cabrera on 5/11/20.
//  Copyright © 2020 Miguel Cabrera. All rights reserved.
//

import SwiftUI


struct con: View {
    var value: Int = 0
    @State var def: Color = .gray
    @State var player: Bool = true
    @State var C1: String = "    "
    @State var C2: String = "    "
    @State var C3: String = "    "
    @State var C4: String = "    "
    @State var C5: String = "    "
    @State var C6: String = "    "
    @State var C7: String = "    "
    @State var C8: String = "    "
    @State var C9: String = "    "
    @State var C10: String = "    "
    @State var C11: String = "    "
    @State var C12: String = "    "
    @State var C13: String = "    "
    @State var C14: String = "    "
    @State var C15: String = "    "
    @State var C16: String = "    "
    @State var C17: String = "    "
    @State var C18: String = "    "
    @State var C19: String = "    "
    @State var C20: String = "    "
    @State var C21: String = "    "
    @State var C22: String = "    "
    @State var C23: String = "    "
    @State var C24: String = "    "
    @State var C25: String = "    "

    func colorFill(flip: String)->Color
    {
        if (flip == " X "){
            return Color.red
        }
        else if (flip == " O " ){
            return Color.yellow
        }
        return Color.white
    }



    var body: some View {
        NavigationView{
            VStack{
                
                HStack(spacing:0){
                    Button(action: {
                        self.player.toggle()
                        if self.player{
                            self.C1 = " X "
                        }
                        else
                        {
                            self.C1 = " O "
                        }
                        
                    }){
                        Text(C1)
                            .padding()
                            .background(colorFill(flip: C1))
                            .border(Color.blue, width: 5)
                    }
                    Button(action: {
                        self.player.toggle()

                        if self.player{
                            self.C2 = " X "
                        }
                        else
                        {
                            self.C2 = " O "
                        }
                        
                    }){
                        Text(C2)
                            .padding()
                            .background(colorFill(flip: C2))
                            .border(Color.blue, width: 5)
                    }
                    Button(action: {
                        self.player.toggle()

                        if self.player{
                            self.C3 = " X "
                        }
                        else
                        {
                            self.C3 = " O "
                        }
                        
                    }){
                        Text(C3)
                            .padding()
                            .background(colorFill(flip: C3))
                            .border(Color.blue, width: 5)
                    }
                    Button(action: {
                        self.player.toggle()

                        if self.player{
                            self.C4 = " X "
                        }
                        else
                        {
                            self.C4 = " O "
                        }
                        
                    }){
                        Text(C4)
                            .padding()
                            .background(colorFill(flip: C4))
                            .border(Color.blue, width: 5)
                    }
                    Button(action: {
                        self.player.toggle()

                        if self.player{
                            self.C5 = " X "
                        }
                        else
                        {
                            self.C5 = " O "
                        }
                        
                    }){
                        Text(C5)
                            .padding()
                            .background(colorFill(flip: C5))
                            .border(Color.blue, width: 5)
                    }
                    
                }
                HStack(spacing:0){
                    Button(action: {
                        self.player.toggle()

                        if self.player{
                            self.C6 = " X "
                        }
                        else
                        {
                            self.C6 = " O "
                        }
                        
                    }){
                        Text(C6)
                            .padding()
                            .background(colorFill(flip: C6))
                            .border(Color.blue, width: 5)
                    }
                    Button(action: {
                        self.player.toggle()

                        if self.player{
                            self.C7 = " X "
                        }
                        else
                        {
                            self.C7 = " O "
                        }
                        
                    }){
                        Text(C7)
                            .padding()
                            .background(colorFill(flip: C7))
                            .border(Color.blue, width: 5)
                    }
                    Button(action: {
                        self.player.toggle()

                        if self.player{
                            self.C8 = " X "
                        }
                        else
                        {
                            self.C8 = " O "
                        }
                        
                    }){
                        Text(C8)
                            .padding()
                            .background(colorFill(flip: C8))
                            .border(Color.blue, width: 5)
                    }
                    Button(action: {
                        self.player.toggle()

                        if self.player{
                            self.C9 = " X "
                        }
                        else
                        {
                            self.C9 = " O "
                        }
                        
                    }){
                        Text(C9)
                            .padding()
                            .background(colorFill(flip: C9))
                            .border(Color.blue, width: 5)
                    }
                    Button(action: {
                        self.player.toggle()

                        if self.player{
                            self.C10 = " X "
                        }
                        else
                        {
                            self.C10 = " O "
                        }
                        
                    }){
                        Text(C10)
                            .padding()
                            .background(colorFill(flip: C10))
                            .border(Color.blue, width: 5)
                    }
                    
                }
                HStack(spacing: 0){
                    Button(action: {
                        self.player.toggle()

                        if self.player{
                            self.C11 = " X "
                        }
                        else
                        {
                            self.C11 = " O "
                        }
                        
                    }){
                        Text(C11)
                            .padding()
                            .background(colorFill(flip: C11))
                            .border(Color.blue, width: 5)
                    }
                    Button(action: {
                        self.player.toggle()

                        if self.player{
                            self.C12 = " X "
                        }
                        else
                        {
                            self.C12 = " O "
                        }
                        
                    }){
                        Text(C12)
                            .padding()
                            .background(colorFill(flip: C12))
                            .border(Color.blue, width: 5)
                    }
                    Button(action: {
                        self.player.toggle()

                        if self.player{
                            self.C13 = " X "
                        }
                        else
                        {
                            self.C13 = " O "
                        }
                        
                    }){
                        Text(C13)
                            .padding()
                            .background(colorFill(flip: C13))
                            .border(Color.blue, width: 5)
                    }
                    Button(action: {
                        self.player.toggle()

                        if self.player{
                            self.C14 = " X "
                        }
                        else
                        {
                            self.C14 = " O "
                        }
                        
                    }){
                        Text(C14)
                            .padding()
                            .background(colorFill(flip: C14))
                            .border(Color.blue, width: 5)
                    }
                    Button(action: {
                        self.player.toggle()

                        if self.player{
                            self.C15 = " X "
                        }
                        else
                        {
                            self.C15 = " O "
                        }
                        
                    }){
                        Text(C15)
                            .padding()
                            .background(colorFill(flip: C15))
                            .border(Color.blue, width: 5)
                    }
                }
                HStack(spacing:0){
                    Button(action: {
                        self.player.toggle()

                        if self.player{
                            self.C16 = " X "
                        }
                        else
                        {
                            self.C16 = " O "
                        }
                        
                    }){
                        Text(C16)
                            .padding()
                            .background(colorFill(flip: C16))
                            .border(Color.blue, width: 5)
                    }
                    Button(action: {
                        self.player.toggle()

                        if self.player{
                            self.C17 = " X "
                        }
                        else
                        {
                            self.C17 = " O "
                        }
                        
                    }){
                        Text(C17)
                            .padding()
                            .background(colorFill(flip: C17))
                            .border(Color.blue, width: 5)
                    }
                    Button(action: {
                        self.player.toggle()

                        if self.player{
                            self.C18 = " X "
                        }
                        else
                        {
                            self.C18 = " O "
                        }
                        
                    }){
                        Text(C18)
                            .padding()
                            .background(colorFill(flip: C18))
                            .border(Color.blue, width: 5)
                    }
                    Button(action: {
                        self.player.toggle()

                        if self.player{
                            self.C19 = " X "
                        }
                        else
                        {
                            self.C19 = " O "
                        }
                        
                    }){
                        Text(C19)
                            .padding()
                            .background(colorFill(flip: C19))
                            .border(Color.blue, width: 5)
                    }
                    Button(action: {
                        self.player.toggle()

                        if self.player{
                            self.C20 = " X "
                        }
                        else
                        {
                            self.C20 = " O "
                        }
                        
                    }){
                        Text(C20)
                            .padding()
                            .background(colorFill(flip: C20))
                            .border(Color.blue, width: 5)
                    }
                    
                }
            }
            
        }
    }
}

struct con_Previews: PreviewProvider {
    static var previews: some View {
        con()
    }
}
