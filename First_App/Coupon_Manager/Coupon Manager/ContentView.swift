//
//  ContentView.swift
//  Coupon Manager
//
//  Created by Miguel Cabrera on 3/10/20.
//  Copyright © 2020 Miguel Cabrera. All rights reserved.
//

import SwiftUI
import AVFoundation
import UIKit

struct ContentView: View {
    var coupons = Coupons()
 
    var body: some View {
        TabView{
            CouponView()
                .font(.title)
                .tabItem {
                        Image("first")
                        Text("Coupons")
                }
//            ScanView()
//                .font(.title)
//                .tabItem {
//                        Image(systemName: "qrcode.viewfinder")
//                        Text("Scan")
//                }
            Text("Settings")
                .font(.title)
                .tabItem {
                        Image("second")
                        Text("Settings")
                }
        }.environmentObject(coupons)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
