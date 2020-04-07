//
//  AppView.swift
//  iDine
//
//  Created by Miguel Cabrera on 4/1/20.
//  Copyright © 2020 Miguel Cabrera. All rights reserved.
//

import SwiftUI

struct AppView: View {
        var body: some View {
            TabView{
                ContentView()
                    .font(.title)
                    .tabItem {
                        Image(systemName: "dollarsign.circle")
                            Text("Coupons")
                    }

                Text("Settings")
                    .font(.title)
                    .tabItem {
                        Image(systemName: "gear")
                            Text("Settings")
                    }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static let coupons = Coupon()
    
    static var previews: some View {
        AppView().environmentObject(coupons)
    }
}
