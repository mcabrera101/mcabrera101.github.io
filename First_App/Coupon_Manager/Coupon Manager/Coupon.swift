//
//  Coupon.swift
//  Coupon Manager
//
//  Created by Miguel Cabrera on 3/10/20.
//  Copyright © 2020 Miguel Cabrera. All rights reserved.
//

import SwiftUI
class Coupon: Identifiable,Codable{
    var name: String = "Sample"
    var barCode: Int = 0
    var id = 0
    var worth: Double = 0.0
    var expiration: String = " "
    var Description: String = " "

}
class Coupons: ObservableObject{
    @Published private(set) var couponL: [Coupon]
    init(){
        self.couponL = []
    }
    
    func add(_ coupon: Coupon){
        
        couponL.append(coupon)
        
    }
    
    
}
