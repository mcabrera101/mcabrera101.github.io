//
//  addView.swift
//  Coupon Manager
//
//  Created by Miguel Cabrera on 3/29/20.
//  Copyright © 2020 Miguel Cabrera. All rights reserved.
//

import SwiftUI

struct AddView: View {
    @State private var coupon = Coupon()
    
    var body: some View {
        NavigationView{
            Form {
                Text("yo mama")
                TextField("Name", text: $coupon.name )
            }.navigationBarTitle("Add Coupon")
        }
        
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
