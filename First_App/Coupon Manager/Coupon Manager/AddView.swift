//
//  addView.swift
//  Coupon Manager
//
//  Created by Miguel Cabrera on 3/29/20.
//  Copyright © 2020 Miguel Cabrera. All rights reserved.
//

import SwiftUI

struct AddView: View {
    @EnvironmentObject var coupons: Coupons
    @EnvironmentObject var cform : Tog

    
    


    var body: some View {
        
        NavigationView{
            Form {
                Section{
                    Text("your coupon code: \(coupons.queue[0].barcode)")
                    TextField("Name", text: $coupons.queue[0].name)
                    TextField("Description", text: $coupons.queue[0].description)
                    TextField("Expiration Date", text: $coupons.queue[0].expiration)
                    TextField("Worth", text: $coupons.queue[0].value)
                }
                Section{
                    Button("Add Coupon"){
                        self.cform.isShowingCouponForm = false
                        self.coupons.add(self.coupons.queue[0])
                    }
                }
            }.navigationBarTitle("Add Coupon")
        }
        
    }
}
struct AddView_Previews: PreviewProvider {
    static var coupon = Coupons()
    static var cform = Tog()
    
    static var previews: some View {
        AddView()
            .environmentObject(coupon)
            .environmentObject(cform)
    }
}

