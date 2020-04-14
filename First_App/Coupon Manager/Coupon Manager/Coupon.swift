//
//  Coupon.swift
//  Coupon Manager
//
//  Created by Miguel Cabrera on 3/10/20.
//  Copyright © 2020 Miguel Cabrera. All rights reserved.
//

import SwiftUI
class Coupon: Identifiable,Codable,Equatable, ObservableObject{
    static func == (lhs: Coupon, rhs: Coupon) -> Bool {
        return lhs.name == rhs.name && lhs.barcode == rhs.barcode && lhs.id == rhs.id && lhs.value == rhs.value && lhs.expiration == rhs.expiration && lhs.description == rhs.description
    }
    
    var name: String = ""
    var barcode: String = " "
    var id = UUID()
    var value: String = ""
    var expiration = Date()
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
    func remove(coupon: Coupon) {
        if let index = coupons.firstIndex(of: coupon) {
            coupons.remove(at: index)
        }
        UserDefaults.standard.removeObject(forKey: Self.saveKey)
    }
    
    func deleteItems(at offsets: IndexSet) {
        coupons.remove(atOffsets: offsets)
        save()
    }
    
    func process (_ coupon: Coupon){
        queue.insert(coupon, at: 0)
    }
    
    

   
    
    
}
