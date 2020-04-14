//
//  ContentView.swift
//  Coupon Manager
//
//  Created by Miguel Cabrera on 3/10/20.
//  Copyright © 2020 Miguel Cabrera. All rights reserved.
//

import SwiftUI
class Tog: ObservableObject{
    @EnvironmentObject var coupons: Coupons
    @Published var isShowingCouponForm : Bool = false
    @Published var Empty: Bool = false
}

struct ContentView: View {
    @EnvironmentObject var coupons: Coupons
    @State private var isShowingScanner = false
    @EnvironmentObject var cform: Tog
    @State var isShowingCouponForm : Bool = false

    
    
    func handleScan(result: Result<String, CodeScannerView.ScanError>){
        self.isShowingScanner = false

        switch result{
        case .success(let code):
            self.cform.isShowingCouponForm = true

            let couponNum = code
            let currCpn = Coupon()
            currCpn.barcode = couponNum
           

            coupons.process(currCpn)
           

            
            
            
            
        case .failure(let error):
            print ("Scanning failed")
        }
    }


    

    var body: some View {
        
        NavigationView{
            
            if self.cform.isShowingCouponForm{
                AddView()
            }
                CouponView()
            
            
            
           
            .navigationBarTitle("Coupons")
                    
                    .navigationBarItems( leading: EditButton(), trailing: Button(action: {
                self.isShowingScanner = true

            }) {
                Image(systemName: "qrcode.viewfinder")
                    .accentColor(.green)
                Text("Scan")
                    .accentColor(.green)

            }) .sheet(isPresented: $isShowingScanner){

                    CodeScannerView(codeTypes: [ .qr], simulatedData: "1800909090", completion: self.handleScan)

            }
        }
                    
    }
}




struct ContentView_Previews: PreviewProvider {
    static var coupon = Coupons()
    static var previews: some View {
        ContentView().environmentObject(coupon)
    }
}
