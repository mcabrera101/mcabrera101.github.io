//
//  ContentView.swift
//  Crossword
//
//  Created by Miguel Cabrera on 5/16/20.
//  Copyright © 2020 Miguel Cabrera. All rights reserved.
//

import SwiftUI
var bestResult: Array<CrosswordsGenerator.Word> = Array()
let attempts = 10





struct ContentView: View {

    var body: some View {
        MapView()
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
