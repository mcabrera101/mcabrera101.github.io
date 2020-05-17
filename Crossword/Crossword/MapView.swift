//
//  MapView.swift
//  Crossword
//
//  Created by Miguel Cabrera on 5/16/20.
//  Copyright © 2020 Miguel Cabrera. All rights reserved.
//

import SwiftUI
struct MapView: View {
    @EnvironmentObject var tiles: Tiles
    @State var name: String = ""
    @State var num: Int = 0
    
    var tile = Tile()
    
    @State var A1 = 0
    @State var A2 = 0
    @State var A3 = 0
    @State var A4 = 0
    @State var A5 = 0
    @State var A6 = 0
    @State var A7 = 0
    @State var A8 = 0
    @State var A9 = 0
    @State var A10 = 0
    @State var A11 = 0
    @State var A12 = 0
    @State var A13 = 0
    @State var B1 = 0
    @State var B2 = 0
    @State var B3 = 0
    @State var B4 = 0
    @State var B5 = 0
    @State var B6 = 0
    @State var B7 = 0
    @State var B8 = 0
    @State var B9 = 0
    @State var B10 = 0
    @State var B11 = 0
    @State var B12 = 0
    @State var B13 = 0
    @State var C1 = 0
    @State var C2 = 0
    @State var C3 = 0
    @State var C4 = 0
    @State var C5 = 0
    @State var C6 = 0
    @State var C7 = 0
    @State var C8 = 0
    @State var C9 = 0
    @State var C10 = 0
    @State var C11 = 0
    @State var C12 = 0
    @State var C13 = 0
    @State var D1 = 0
    @State var D2 = 0
    @State var D3 = 0
    @State var D4 = 0
    @State var D5 = 0
    @State var D6 = 0
    @State var D7 = 0
    @State var D8 = 0
    @State var D9 = 0
    @State var D10 = 0
    @State var D11 = 0
    @State var D12 = 0
    @State var D13 = 0
    @State var E1 = 0
    @State var E2 = 0
    @State var E3 = 0
    @State var E4 = 0
    @State var E5 = 0
    @State var E6 = 0
    @State var E7 = 0
    @State var E8 = 0
    @State var E9 = 0
    @State var E10 = 0
    @State var E11 = 0
    @State var E12 = 0
    @State var E13 = 0
    @State var F1 = 0
    @State var F2 = 0
    @State var F3 = 0
    @State var F4 = 0
    @State var F5 = 0
    @State var F6 = 0
    @State var F7 = 0
    @State var F8 = 0
    @State var F9 = 0
    @State var F10 = 0
    @State var F11 = 0
    @State var F12 = 0
    @State var F13 = 0
    @State var G1 = 0
    @State var G2 = 0
    @State var G3 = 0
    @State var G4 = 0
    @State var G5 = 0
    @State var G6 = 0
    @State var G7 = 0
    @State var G8 = 0
    @State var G9 = 0
    @State var G10 = 0
    @State var G11 = 0
    @State var G12 = 0
    @State var G13 = 0
    @State var H1 = 0
    @State var H2 = 0
    @State var H3 = 0
    @State var H4 = 0
    @State var H5 = 0
    @State var H6 = 0
    @State var H7 = 0
    @State var H8 = 0
    @State var H9 = 0
    @State var H10 = 0
    @State var H11 = 0
    @State var H12 = 0
    @State var H13 = 0
    @State var I1 = 0
    @State var I2 = 0
    @State var I3 = 0
    @State var I4 = 0
    @State var I5 = 0
    @State var I6 = 0
    @State var I7 = 0
    @State var I8 = 0
    @State var I9 = 0
    @State var I10 = 0
    @State var I11 = 0
    @State var I12 = 0
    @State var I13 = 0
    @State var J1 = 0
    @State var J2 = 0
    @State var J3 = 0
    @State var J4 = 0
    @State var J5 = 0
    @State var J6 = 0
    @State var J7 = 0
    @State var J8 = 0
    @State var J9 = 0
    @State var J10 = 0
    @State var J11 = 0
    @State var J12 = 0
    @State var J13 = 0
    @State var K1 = 0
    @State var K2 = 0
    @State var K3 = 0
    @State var K4 = 0
    @State var K5 = 0
    @State var K6 = 0
    @State var K7 = 0
    @State var K8 = 0
    @State var K9 = 0
    @State var K10 = 0
    @State var K11 = 0
    @State var K12 = 0
    @State var K13 = 0
    @State var L1 = 0
    @State var L2 = 0
    @State var L3 = 0
    @State var L4 = 0
    @State var L5 = 0
    @State var L6 = 0
    @State var L7 = 0
    @State var L8 = 0
    @State var L9 = 0
    @State var L10 = 0
    @State var L11 = 0
    @State var L12 = 0
    @State var L13 = 0
    @State var M1 = 0
    @State var M2 = 0
    @State var M3 = 0
    @State var M4 = 0
    @State var M5 = 0
    @State var M6 = 0
    @State var M7 = 0
    @State var M8 = 0
    @State var M9 = 0
    @State var M10 = 0
    @State var M11 = 0
    @State var M12 = 0
    @State var M13 = 0
    

    var body: some View {
        NavigationView{
            Row()
            }
        }
    
}

struct MapView_Previews: PreviewProvider {
    static var tiles = Tiles()
    static var tile = Tile()

    static var previews: some View {
        MapView(tile: tile)
        .environmentObject(tiles)
    }
}
