//
//  Coupon.swift
//  Coupon Manager
//
//  Created by Miguel Cabrera on 3/10/20.
//  Copyright © 2020 Miguel Cabrera. All rights reserved.
//

import SwiftUI
class Coupon: Identifiable,Codable, ObservableObject{
    var name: String = ""
    var barcode: Int = 0
    var id = UUID()
    var value: String = ""
    var expiration: String = ""
    var description: String = ""

}

class Coupons: ObservableObject{
    @Published var coupons = [Coupon]()
    @Published var queue = [Coupon]()
    static let saveKey = "SavedCoupons"

    init() {
        if let data = UserDefaults.standard.data(forKey: Self.saveKey) {
            if let decoded = try? JSONDecoder().decode([Coupon].self, from: data) {
                self.coupons = decoded
                return
            }
        }
    }
    
    private func save(){
        if let encoded = try? JSONEncoder().encode(coupons){
            UserDefaults.standard.set(encoded, forKey: Self.saveKey)
        }
    }

    func add(_ coupon: Coupon){
        coupons.append(coupon)
        save()
    }
    func remove(coupons: Coupons) {
        if let index = coupons.firstIndex(of: coupons) {
            coupons.remove(at: index)
        }
    }
    
    func process (_ coupon: Coupon){
        queue.insert(coupon, at: 0)
    }
    
    

   
    
    
}
