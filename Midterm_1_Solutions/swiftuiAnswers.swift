//
//  ContentView.swift
//  tabbed
//
//  Created by Miguel Cabrera on 3/11/20.
//  Copyright © 2020 Miguel Cabrera. All rights reserved.
//

import SwiftUI

struct ContentView: View {
//   @State var tapCount: Int = 0
         var body: some View {
// QUESTION 1: In SwiftUI, write the code that would show the view to the right when running
            
//            Text("I am an ios \ndeveloper!")
//                .padding()
//                .background(Color.red)
//                .padding()
//                .background(Color.blue)
//                .padding()
//                .padding()
//                .background(Color.green)
            
            //QUESTION 2: In SwiftUI, write the code that would show the view to the right when running (“Live long and prosper” is written in the center)
//            Text("Live long and prosper")
//                .frame(width: 200, height: 200)
//                .background(Color.red)
            
            //QUESTION 3: In SwiftUI, write the code to show a form with “Hello, world” shown twice, and with with a Navigation bar with the text “SwiftUI” shown in its title.
//            NavigationBar {
//                Form{
//                    Section{
//                        Text("Hello, world")
//                        Text("Hello, world")
//                    }
//
//                }.navigationBarTitle("SwiftUI")
//            }
            //QUESTION 4: Write the SwiftUI code to have a button that shows its tapCount when tapped on.
            
            Button(action: { self.tapCount += 1}) {
            Text("Tap count: \(self.tapCount)")
            .padding()
            .frame(width: 100, height: 100)
            .background(Color.blue)       .foregroundColor(.white).multilineTextAlignment(.center)
            }
            
 
            
            
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
