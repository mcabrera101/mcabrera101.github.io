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
            VStack(){
                Form {
                        Section(header: Text("Add Coupon")){
                            HStack{
                                Image(systemName: "barcode")
                                Text("\(coupons.queue[0].barcode)")
                              
                                
                            }
                            
                            TextField("Name", text: $coupons.queue[0].name)
                            TextField("Description", text: $coupons.queue[0].description)
                            
                            DatePicker("Expires:", selection:$coupons.queue[0].expiration,  in: Date()... , displayedComponents: .date)
                            TextField("Worth", text: $coupons.queue[0].value)
                        }
                    }
                    

                    HStack{
                            Section{
                                Button("Add Coupon", action:{
                                    self.cform.isShowingCouponForm = false
                                    self.coupons.add(self.coupons.queue[0])
                                })
                            }
                    
                            Section{
                                Button ( "Cancel", action:{
                                    self.cform.isShowingCouponForm.toggle()
                                })
                            }
                        
                    }
                    Spacer()
            }
            
        }.navigationBarHidden(true)
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

