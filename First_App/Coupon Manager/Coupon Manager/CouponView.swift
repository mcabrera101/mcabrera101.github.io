//
//  CouponView.swift
//  Coupon Manager
//
//  Created by Miguel Cabrera on 3/27/20.
//  Copyright © 2020 Miguel Cabrera. All rights reserved.
//

import SwiftUI

struct CouponView: View {
    @EnvironmentObject var coupons: Coupons
    @EnvironmentObject var cform: Tog
    
    



    var body: some View {
        
                List{
                    ForEach(coupons.coupons) { coupon in
                        HStack{
                            
                            VStack(alignment: .leading){

                                Text(coupon.name)
                                    .font(.title)

                                Text(String(coupon.description))
                                    .foregroundColor(.secondary)
                                    .font(.subheadline)

                            }
                            
                                Spacer()
                                Text("$\(coupon.value)")
                                .foregroundColor(.green)
                        }
                    }.onDelete(perform: deleteItems)
                }        
    }
}


struct CouponView_Previews: PreviewProvider {
    static var coupons = Coupon()
    static var cform = Tog()
    static var previews: some View {
        CouponView()
            .environmentObject(coupons)
        .environmentObject(cform)
    }
}
